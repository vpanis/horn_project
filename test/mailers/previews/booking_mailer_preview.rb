class BookingMailerPreview < ActionMailer::Preview
  def welcome
    booking = Booking.first
    BookingMailer.welcome(booking)
  end
end
