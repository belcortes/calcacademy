class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # helper_method :current_user
  def stored_location_for(resource)
    nil
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def current_user=(user)
    current_user = user
  end 

  # def current_user
  #   if session[:user_id]
  #     User.find(session[:user_id])
  #   end
  # end

  # private
  #   def ensure_admin
  #     unless current_user && current_user.admin?
  #       render text: 'not authorized'
  #   end
  # end
end
