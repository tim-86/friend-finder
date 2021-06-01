class UsersController < ApplicationController
  def edit
    authorize current_user
    render "devise/registrations/edit", locals: {resource: current_user, resource_name: :user}
  end

  def update
    raise
    if current_user.update(user_params)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :location, :first_name, :last_name, :password, :photo)
  end
end
