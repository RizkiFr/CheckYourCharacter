class AnswersController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource
	def index
		@answers = Answer.all
	end

	def new
		@answers = Question.all
		@answer = Answer.new
	end

	def create
		@answer = Answer.new(answer_params)
		@user = current_user.update_attributes(:kepribadian => "Sangat Bertanggung Jawab")
	    if @answer.save
	      redirect_to @answer
	    else
	    	render 'new'
	    end
	end

	def show
		@user = current_user
		@answer = Answer.find(params[:id])
	end

	private
    def answer_params
      params.require(:answer).permit(:jawaban_1, :jawaban_2, :jawaban_3, :jawaban_4, :jawaban_5, :jawaban_6, :jawaban_7, :jawaban_8, :jawaban_9, :jawaban_10)
    end
end
