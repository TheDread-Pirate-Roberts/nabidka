class Players::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:date_of_birth, :gender, :username])
  end

  def after_sign_up_path_for(resource)
    offers_path
  end

  def after_sign_in_path_for(resource)
    offers_path
  end
end
