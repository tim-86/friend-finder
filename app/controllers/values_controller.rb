class ValuesController < ApplicationController
before_action :reset_values, only: [:index]

  def index
    @values = policy_scope(Value)
    @user_value = UserValue.new
  end

  private

  def reset_values
    if current_user.user_values.exists?
    current_user.values_combination = nil
    current_user.core_values = nil
    id = current_user.id
    user_values =  UserValue.where(user_id: id)
    user_values.delete_all

    raise


  end

end

