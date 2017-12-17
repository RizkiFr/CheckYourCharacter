class DashboardController < ApplicationController
	before_action :authenticate_user!
  before_action :authorize

  # get "admin"
  def index
  	
  end

  private
  def authorize
    if !current_user.has_role? :admin
      render plain:"No access for you!"
    end
  end
end
