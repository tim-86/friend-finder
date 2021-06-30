class Event < ApplicationRecord
  has_many :video_dates
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :date, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :max_participants, presence: true
  validates :description, presence: true
  validates :video_link, presence: true

  def close_booking
    booking_open = false
    generations =  RoundRobinTournament.schedule(users.ids)
    generations.each_with_index do |generation, index|
      generation.each do |combination|
        event_time = self.date
        new_event_time = event_time + Event.duration * index.seconds
        VideoDate.create(user1: self.users.find(combination[0]), user2: self.users.find(combination[1]), start_time: new_event_time, event: self)
      end
    end
  end

  def reset(offset = 0)
    video_dates.destroy_all
    self.date = DateTime.now + offset.seconds
    close_booking
  end

  private

  def self.duration
    (ENV["EVENT_DURATION"] || 30).to_i
  end

end
