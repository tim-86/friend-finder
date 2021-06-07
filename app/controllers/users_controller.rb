class UsersController < ApplicationController
  def edit
    authorize current_user
    render "devise/registrations/edit", locals: {resource: current_user, resource_name: :user}
  end

  def update
    if current_user.update(user_params)
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    setup_video_call_token
  end

  private
  def user_params
    params.require(:user).permit(:email, :location, :first_name, :last_name, :password, :photo)
  end

  def setup_video_call_token
    # No chatting with yourself
    return if @user == current_user

    twilio = TwilioService.new
    @video_call_token = twilio.generate_token(current_user, @user)
  end

end
