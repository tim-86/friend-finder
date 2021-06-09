class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

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

  def dashboard
    @interests = []
    3.times do |index|
      user_interest = current_user.user_interests.where(index: index).first
      if user_interest
        @interests[index] = user_interest.interest.name
      else
        @interests[index] = "?"
      end
    end
  end

  private

  def set_video_date
    @video_date = @event.video_dates.where("user1_id = :user_id OR user2_id = :user_id", user_id: current_user.id).where(
      "start_time <= ? AND start_time >= ?", DateTime.now, DateTime.now - Event.duration.seconds
    ).first
  end

  #3 oclock start time
  # i refresh my page 3:00:59 i get first video date! (because it is still running)
  #3:01 is the second date
  #i reload page at 03:01:20 the js will reload the page at 03:02:20 and i will miss 20 seconds of the third date

  def setup_video_call_token
    # No chatting with yourself
    return if @friend == current_user

    twilio = TwilioService.new
    @video_call_token = twilio.generate_token(current_user, @friend)
  end


end
