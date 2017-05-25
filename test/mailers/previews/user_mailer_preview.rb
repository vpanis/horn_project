class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    UserMailer.booked(user)
  end
end
