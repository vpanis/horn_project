class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.booking.subject
  #
  def welcome(booking)
    @booking = booking  # Instance variable => available in view
    mail(to: @booking.user.email, subject: 'Your booking has been validated !')
    # This will render a view in `app/views/user_mailer`!
  end

  def bye(booking)
    @booking = booking  # Instance variable => available in view
    mail(to: @booking.user.email, subject: 'Your booking has been cancelled !')
    # This will render a view in `app/views/user_mailer`!
  end
end
