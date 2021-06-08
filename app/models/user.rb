class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :user_values, dependent: :destroy
  has_many :values, through: :user_values
  has_many :events, through: :bookings
  has_one_attached :avatar
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests

  def video_dates
    VideoDate.where(user1: self).or(VideoDate.where(user2: self))
  end
end
