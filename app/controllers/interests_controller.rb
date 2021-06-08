class InterestsController < ApplicationController
  def index
    @interests = policy_scope(Interest)
    @user_interest = UserInterest.new
  end
end
