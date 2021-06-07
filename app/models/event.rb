class Event < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  has_many :video_dates

  validates :date, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :max_participants, presence: true
  validates :description, presence: true
  validates :video_link, presence: true

  def close_booking
    # we want to prohibit new bookings and then create all video_dates with that terrible combination!
    # add a new column booking_open (true/false)
  end
end
