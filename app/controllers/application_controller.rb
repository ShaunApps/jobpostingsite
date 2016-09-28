class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_for_session(session[:cas_extra_attributes.to_s]) rescue nil
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
