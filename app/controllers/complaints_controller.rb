class ComplaintsController < ApplicationController
	before_action :authenticate_user!
  before_action :authorize
  load_and_authorize_resource
	def index
		@complaints = Complaint.all
	end

	def show
		@complaint = Complaint.find(params[:id]) 
	end

	private
  def authorize
    if !current_user.has_role? :admin
      redirect_to welcome_path, alert: "Anda tidak bisa mengakses halaman tersebut"
    end
  end
end
