class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :horntrip

  validates :status, :inclusion=> { :in => ["Pending", "Confirmed", "Coming soon", "In progress", "Done"] }
  validates :user_id, presence: true
  validates :horntrip_id, presence: true
end
