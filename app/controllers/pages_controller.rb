class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  

  def video_session
    @event = Event.find(params[:event_id])
    set_video_date 
    if @video_date
      @friend = @video_date.other_user(current_user)
      setup_video_call_token
    end
  end

  private

  def set_video_date
    @video_date = @event.video_dates.where("user1_id = :user_id OR user2_id = :user_id", user_id: current_user.id).where(
      "start_time >= ? AND start_time <= ?", DateTime.current, DateTime.current + Event.duration.seconds
    ).first
  end

  def setup_video_call_token
    # No chatting with yourself
    return if @friend == current_user

    twilio = TwilioService.new
    @video_call_token = twilio.generate_token(current_user, @friend)
  end

end
