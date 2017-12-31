class ContactsController < ApplicationController
	before_action :authenticate_user!
	def index
		@contact = Complaint.new
	end

	def create
		@contact = Complaint.new(complaint_params)
    if @contact.save
      redirect_to contacts_path, notice: 'Masukan anda terkirim. Terima kasih'
    else
      redirect_to contacts_path, notice: 'Maaf masukan anda gagal terkirim'
    end
	end

	private

  def complaint_params
    params.require(:complaint).permit(:text, :user_id)
  end
end
