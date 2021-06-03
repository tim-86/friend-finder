class ValuesController < ApplicationController
  def index
    @values = policy_scope(Value)
    @user_value = UserValue.new
  end


  # def show
  #   authorize @value
  # end
end
