class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_odogwu!, only: [:edit, :update, :destroy]
  alias_method :current_user, :current_odogwu # Could be :current_member or :logged_in_user | for cancancan

  before_action :configure_permitted_parameters, if: :devise_controller?

    

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  protected

    def configure_permitted_parameters # permit these objects to be written to database
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :firstname, :lastname, :email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :firstname, :lastname, :bio, :email, :password, :current_password, :password_confirmation) }
    end

end
