class ApplicationController < ActionController::Base

  helper_method :current_user # make helper methods avaialable in views 
  def current_user
    @curretn_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :logged_in? 
  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform this action"
      redirect_to login_path
    end
  end
  
end
