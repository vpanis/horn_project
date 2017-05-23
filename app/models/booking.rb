class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :horntrip

  validates :is_validated, presence: true, default: false
  validates :user_id, presence: true, uniqueness: true
  validates :horntrip_id, presence: true, uniqueness: true
end
