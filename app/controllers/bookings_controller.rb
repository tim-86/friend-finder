class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.user = @user
    @booking.save
    redirect_to event_path(@event), notice: "Your booking was succesfull!"
  end

  private
  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
