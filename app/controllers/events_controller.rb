class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = policy_scope(Event)
    location = current_user.location
    @events = @events.where(location: location).sort_by {|event| event.date}
  end

  def show
    @booking = Booking.new
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    if @event.save
      redirect_to events_path, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    if @event.update(event_params)
      redirect_to events_path, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @event
    @event.destroy
    redirect_to events_path, notice: 'Event was successfully destroyed'
  end


#   def event_video_call
#     #at the moment video-chat can start when each user looks at the other users show page
# #user_path(array[0])

# # We want from each event all possible user combinations in an array.

# event.users.each do |user|
#   event_user_id = []
#   event_users_id << user.id
#   event_users_id.combination(2).to_a
#   #[[1,2] [3,4],[2,3],[1,4],[1,3],[2,4]].
# end
# #We want a link, that only appears when the event starts, from the event show page to start the video calls.
# [[[1,2] [3,4]],[[2,3], [1,4]],[[1,3], [2,4]]]
# [1,2] [3,4] [2,3], [1,4] 
# #Then the user will be connected to the first combination.
# #when user_id 1 clicks the link it will take the user to
# user_path(event_user_id[0][0][1])
# #The counterpart will be connected to the same combination.
# user_path(event_user_id[0][0][0])
# #The video chat starts with a 30 second delay.

# #After 5 Minutes the user will automatically be connected to the next combination.
# #The video chat starts with a 30 second delay.
# #This happens with all possible combinations until done.
# #Then the user will be conected to the event show page and be able to contact the other users.
# event_path(:id)

# #Users should not be able to see other users show/page unless for the video-chat.

  private
  def event_params
    params.require(:event).permit(:date, :location, :price, :max_participants, :description, :photo, :video_link)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
