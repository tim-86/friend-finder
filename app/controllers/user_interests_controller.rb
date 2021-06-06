class UserInterestsController < ApplicationController
  def new
    @user_interest = UserInterest.new
    authorize @userinterest
  end

  def create
    hash = params[:user_interest]
    array = hash[:interest_id]
    array.shift
    array.each do |interest_id|
      @user_interest = UserInterest.new
      authorize @user_interest
      @user_interest.interest_id = interest_id
      @user_interest.user = current_user
      @user_interest.save
    end
    redirect_to dashboard_path
 
  end
end
