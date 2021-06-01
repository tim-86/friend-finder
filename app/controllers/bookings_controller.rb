class BookingsController < ApplicationController
  before_action :set_booking, only:[:show, :destroy]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new
    authorize @booking
    @user = current_user
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.user = @user
    @booking.save
    redirect_to event_path(@event), notice: "Your booking was succesfull!"
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to root_path, notice: "Your booking was cancelled!"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
