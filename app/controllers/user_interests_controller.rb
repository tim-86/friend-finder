class UserInterestsController < ApplicationController
  before_action :set_interest, only: [:edit, :update]

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

  def edit
  end

  def update
  end

  private

  def set_interest
    @user_interest = UserInterest.find(params[:id])
  end
end
