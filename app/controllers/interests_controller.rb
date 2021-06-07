class InterestsController < ApplicationController
  def index
    @interests = policy_scope(Value)
    @user_interest = UserInterest.new
  end
end
