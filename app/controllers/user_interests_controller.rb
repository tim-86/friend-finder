class UserInterestsController < ApplicationController
  def set
    index = params[:index]
    name = params[:name]
    user_interests = current_user.user_interests
    interest = Interest.find_by(name: name)
    if user_interests.any? && user_interests.find_by(index: index)
      user_interest = user_interests.find_by(index: index)
      authorize user_interest
      user_interest.update(interest: interest)
    else
      user_interest = UserInterest.new(interest: interest, user: current_user)
      authorize user_interest
      user_interest.save
    end
    respond_to do |format|
      format.js
    end
  end
end
