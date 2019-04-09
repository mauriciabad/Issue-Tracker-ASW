

class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end 
  
  # before_action :require_login

  # def require_login
  #   redirect_to "/" unless current_user
  # end
  
  protect_from_forgery with: :exception
  helper_method :current_user
end