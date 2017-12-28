class DashboardController < ApplicationController
	before_action :authenticate_user!
  before_action :authorize

  # get "admin"
  def index
  	
  end

  private
  def authorize
    if !current_user.has_role? :admin
      redirect_to welcome_path, alert: "Anda tidak bisa mengakses halaman tersebut"
    end
  end
end
