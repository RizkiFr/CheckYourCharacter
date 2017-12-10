class AnswersController < ApplicationController
	before_action :authenticate_user!
	def index
		@answers = Question.all
		@answer = Answer.new
	end

	def create
		@answer = Answer.new(answer_params)

    if @answer.save
      redirect_to @answer
    end
	end

	def show
		@answer = Answer.find(params[:id])
	end

	private
    def answer_params
      params.require(:answer).permit(:jawaban_1, :jawaban_2, :jawaban_3, :jawaban_4, :jawaban_5, :jawaban_6, :jawaban_7, :jawaban_8, :jawaban_9, :jawaban_10,)
    end
end
