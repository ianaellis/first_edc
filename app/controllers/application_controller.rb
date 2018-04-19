class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?
  # include SessionsHelper

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = exception.message
  	redirect_to root_url
  end





  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
    	user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
    end
  end

end
