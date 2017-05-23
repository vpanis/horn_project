class BookingsController < ApplicationController
  before_action :set_horntrip, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:is_validated, :user_id, :horntrip_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
