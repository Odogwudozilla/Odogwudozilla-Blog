class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_odogwu!, only: [:edit, :update, :destroy]
  alias_method :current_user, :current_odogwu # Could be :current_member or :logged_in_user

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
end
