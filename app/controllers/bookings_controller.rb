class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy, :confirm_booking, :cancel_booking]

  def index
    @horntrip = Horntrip.find(params[:horntrip_id])
    @bookings = Booking.where(horntrip_id: params[:horntrip_id])
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
      BookingMailer.welcome(@booking).deliver_now
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
  end

  def confirm_booking
    @horntrip = Horntrip.find(params[:horntrip_id])
    if @booking.status == "pending"
      @booking.status = "confirmed"
      BookingMailer.welcome(@booking).deliver_now
    else
      @booking.status = "cancelled"
      BookingMailer.bye(@booking).deliver_now
    end
    @booking.save
    redirect_to horntrip_bookings_path(@horntrip)
  end

  def cancel_booking
    @horntrip = Horntrip.find(params[:horntrip_id])
    if @booking.status == "pending"
      @booking.status = "cancelled"
      BookingMailer.bye(@booking).deliver_now
    else
      @booking.status = "confirmed"
      BookingMailer.welcome(@booking).deliver_now
    end
    @booking.save
    redirect_to horntrip_bookings_path(@horntrip)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :horntrip_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def send_booked_email
    UserMailer.welcome(self).deliver_now
  end
end
