class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if logged_in?
      @user = User.find_by(session[:user_id])
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate_user
    unless logged_in?
      redirect_to '/'
    end
  end


end
