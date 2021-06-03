class UserValuesController < ApplicationController
  def new
    @user_value = UserValue.new
    authorize @uservalue
  end
end
