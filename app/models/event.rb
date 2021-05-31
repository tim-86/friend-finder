class Event < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :date, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :max_participants, presence: true
  validates :description, presence: true
  validates :video_link, presence: true
end
