class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :horntrip

  validates :is_validated, default: false
  validates :user_id, presence: true
  validates :horntrip_id, presence: true
end
