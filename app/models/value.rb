class Value < ApplicationRecord
  has_many :user_values
  has_one_attached :photo


end
