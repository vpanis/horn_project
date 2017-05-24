class Horntrip < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_attachment :photo

  # Geocoding setting
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # Validation
  validates :user, presence: true
  validates :title, presence:true
  validates :description, presence:true
  validates :address, presence:true
  validates :price, presence:true
  validates :starting_day, presence:true
  validates :length, presence:true
end
