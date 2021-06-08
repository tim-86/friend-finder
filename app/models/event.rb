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
    booking_open = false
    # combination logic
    combinations = round_robin(users)
    generations = []

    generations << [combinations[0], combinations[1]]
    generations << [combinations[2], combinations[3]]
    generations << [combinations[4], combinations[5]]

    generations.each_with_index do |generation, index|
      generation.each do |combination|
        event_time = self.date
        new_event_time = event_time + Event.duration * index.seconds
        VideoDate.create(user1: combination[0], user2: combination[1], start_time: new_event_time, event: self)
      end
    end

    save

  end

  def round_robin(list, pairs = [])
 
    length = list.length
    halfway = (length / 2.0).ceil
    first_half = list[0..halfway - 1]
    second_half = list[halfway..]
  
  
    if length <= 2
  
      first = first_half[0]
      second = second_half[0] || ''
      pairs << [first, second] unless first == second
  
      return pairs
    else
      halfway.times do
        second_halves_used = []
        first_half.each do |first|
          found_second = false
          second_half.each do |second|
            next if second_halves_used.include?(second)
            next if pairs.any? { |pair| (pair[0] == first && pair[1] == second) || (pair[1] == first && pair[0] == second) }
  
            # second_half.delete(second)
            found_second = true
            pairs << [first, second]
            second_halves_used << second
            break
          end
          unless found_second
            pairs << [first, '']
          end
        end
      end
      pairs = round_robin(first_half, pairs)
      pairs = round_robin(second_half, pairs)
      return pairs
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
