class ApplicationController < ActionController::Base
  
  before_action :current_user
  helper_method :current_user
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_for_session(session[:cas_extra_attributes.to_s]) rescue nil
  end


  # def authorize
  #   redirect_to '/login' unless current_user
  # end
end
