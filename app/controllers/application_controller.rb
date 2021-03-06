class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?  

  protected

  def require_user
    redirect_to new_user_session_path unless user_signed_in?
  end

  def require_admin
    unless current_user.try(:admin?)
      sign_out current_user
      redirect_to(new_user_session_path)
    end
  end

  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
