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
      redirect_to events_path,  notice: 'Event was successfully created.'
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

  private
  def event_params
    params.require(:event).permit(:date, :location, :price, :max_participants, :description, :photo, :video_link)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
