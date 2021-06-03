class UserValuesController < ApplicationController
  def new
    @user_value = UserValue.new
    authorize @uservalue
  end

  def create
    hash = params[:user_value]
    hash[:value_id].each do |value_id|
      @user_value = UserValue.new
      @user_value.value_id = value_id
      @user_value.user = current_user
      @user_value.save
    end
    authorize @user_value
  end

  def quiz
    @user_value = UserValue.new
    authorize @user_value
    raise

  end

end
