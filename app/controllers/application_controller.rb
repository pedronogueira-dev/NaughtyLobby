class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home, :dashboard]

  def after_sign_in_path_for(resource)
  dashboard_path
end
end
