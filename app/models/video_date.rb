class VideoDate < ApplicationRecord
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"
  belongs_to :event

  validates :start_time, presence: true
  validate :user_combination_must_be_unique

  def user_combination_must_be_unique
    # user 1 and user 2 or user 1 and user 2 can not happen
    if user1.present? && user2.present? && event.present?
      existing_dates = event.video_dates.where(user1: user1, user2: user2).or(event.video_dates.where(user1: user2, user2: user1))
      if existing_dates.any? 
        errors.add(:user1, "combination already exists")
      end
    end
  end

end
