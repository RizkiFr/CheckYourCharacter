class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
	  if current_user.has_role? :admin
	  	dashboard_path
	  else
	    welcome_path
	  end 
	end
end
