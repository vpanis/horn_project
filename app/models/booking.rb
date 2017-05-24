class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :horntrip

  validates :status, :inclusion=> { :in => ["pending", "confirmed", "cancelled"] }
  validates :user_id, presence: true
  validates :horntrip_id, presence: true
end
