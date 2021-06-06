class UserValuesController < ApplicationController
  def new
    @user_value = UserValue.new
    authorize @uservalue
  end

  



  def create
    hash = params[:user_value]
    array = hash[:value_id]
    array.shift
    array.each do |value_id|
      @user_value = UserValue.new(counter: 0)
      @user_value.value_id = value_id
      @user_value.user = current_user
      @user_value.save
    end
    temp = []
    array = current_user.values
    array.each do |value|
      temp << value[:id]
    end
    current_user.values_combination = temp.combination(2).to_a
    current_user.save!
    authorize @user_value
    redirect_to user_values_quiz_path
  end

  def quiz
    @user_value = UserValue.new
    authorize @user_value

    combination = current_user.values_combination[0]
    @array = []
    @value1 = Value.find(combination[0])
    @value2 = Value.find(combination[1])
    @array << @value1
    @array << @value2


    if params[:user_value]
      user_value = current_user.user_values.where(value_id: params[:user_value][:value_id]).first
      user_value.counter += 1
      user_value.save!
      current_user.values_combination.shift
      current_user.save!
      if current_user.values_combination.empty?
        values = current_user.user_values 
        core_values = values.sort_by { |value| value[:counter]}.reverse!.slice(0,3)
        core_values.each do |value|
          current_user.core_values << value[:id]
          current_user.save!
        end
        redirect_to dashboard_path
      else
        redirect_to user_values_quiz_path
      end
    end
  end
end

    # check params exist?

    # find uservalue by user_id and value_id

    # var.counter +=1
    # save
    # kick out first element of values_combination
    # if values_combination empty do something else



    # get two value ids from combination
    # get resp object from value_id
    # store them to array

    # need first element of value combinations
    # create submit form
    # let user choose value
    # increment resp value counter
    # kick out first element
    # redirect to quiz

