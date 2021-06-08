class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def video_session
    event = Event.find(params[:event_id])
    @video_date= event.video_dates.where("user1_id = :user_id OR user2_id = :user_id", user_id: current_user.id).where(
      "start_time >= ? AND start_time <= ?", DateTime.current, DateTime.current + 60.seconds
    ).first
    raise
  end
  
end
