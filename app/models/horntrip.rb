class Horntrip < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  validates :user, presence: true
  validates :title, presence:true
  validates :description, presence:true
  validates :location, presence:true
  validates :price, presence:true
  validates :starting_day, presence:true
  validates :length, presence:true
end
