class ApplicationController < ActionController::Base
  protect_from_forgery
  private 
  
  def current_user
    @current_user ||= Kunde.find(session[:kunde_id])if session[:kunde_id]
  end
  
  helper_method :current_user
end
