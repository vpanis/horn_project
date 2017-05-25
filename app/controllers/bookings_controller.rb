class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all.where(user: current_user)

  end

  def show
  end


  def new
    @booking = Booking.new
  end

  def create
    @horntrip = Horntrip.find(params[:horntrip_id])
    @booking = Booking.new(user_id: current_user.id, horntrip_id: @horntrip.id)
    if @booking.save
      redirect_to horntrip_booking_path(@horntrip.id, @booking.id)
    else
      render "horntrips/show"
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def trips
    @user_bookings = current_user.bookings
    raise
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :horntrip_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
