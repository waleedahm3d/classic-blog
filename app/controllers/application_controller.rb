class ApplicationController < ActionController::Base

  helper_method :current_user # make helper methods avaialable in views 
  def current_user
    @curretn_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :logged_in? 
  def logged_in?
    !!current_user
  end

end
