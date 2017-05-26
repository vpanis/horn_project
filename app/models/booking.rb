class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :horntrip

  validates :status, :inclusion=> { :in => ["pending", "confirmed", "cancelled"] }
  validates :user_id, presence: true
  validates :horntrip_id, presence: true

  private

  def send_welcome_email
      BookingMailer.welcome(self).deliver_now
  end
end
