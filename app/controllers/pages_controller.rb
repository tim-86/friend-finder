class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @interests = []
    3.times do |index|
      user_interest = current_user.user_interests.where(index: index).first
      if user_interest
        @interests[index] = user_interest.interest.name
      else
        @interests[index] = "?"
      end
    end
  end
end
