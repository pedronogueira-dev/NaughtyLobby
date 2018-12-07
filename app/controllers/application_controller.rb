class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home, :politicians]

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
