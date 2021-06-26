class RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: :create
  before_action :configure_account_update_params, only: :update

  protected

  def after_sign_up_path_for(resource)
    '/values' # Or :prefix_to_your_route
  end

   # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:birthday, :bio, :avatar])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:birthday, :bio, :avatar])
  end
end
