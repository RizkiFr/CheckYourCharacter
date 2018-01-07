class AnswersController < ApplicationController
	before_action :set_answer, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	load_and_authorize_resource
	def index

	end

	def new
		@user = current_user
		@answers = Question.all.order(:no)
		@answer = Answer.new
	end

	def create
		@user = current_user
		@answer = Answer.new(answer_params)
		@answers = Question.all.order(:no)
	    if @answer.save
	      redirect_to @answer
	    else
	    	render 'new'
	    end
	end

	def show
		@answer = Answer.find(params[:id])
		@user = current_user
		@result = Answer.last
		@dominance = 0
		@influence = 0
		@steadiness = 0
		@compliance = 0
		  if @result.jawaban_1 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_1 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_1 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_2 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_2 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_2 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_3 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_3 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_3 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_4 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_4 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_4 == 'Steadiness'
		  	@steadiness+=1
		  elsif @result.jawaban_4 == 'Compliance'
		  	@compliance+=1
			end

			if @result.jawaban_5 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_5 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_5 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_6 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_6 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_6 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_7 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_7 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_7 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_8 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_8 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_8 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_9 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_9 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_9 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_10 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_10 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_10 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_11 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_11 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_11 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_12 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_12 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_12 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_13 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_13 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_13 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_14 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_14 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_14 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_15 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_15 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_15 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_16 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_16 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_16 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_17 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_17 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_17 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_18 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_18 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_18 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_19 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_19 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_19 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_20 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_20 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_20 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_21 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_21 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_21 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_22 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_22 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_22 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_23 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_23 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_23 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

			if @result.jawaban_24 == 'Dominance'
		  	@dominance+=1
		  elsif @result.jawaban_24 == 'Influence'
		  	@influence+=1
		  elsif @result.jawaban_24 == 'Steadiness'
		  	@steadiness+=1
		  else
		  	@compliance+=1
			end

		@kepribadian=nil
		if @dominance>@influence && @dominance>@steadiness && @dominance>@compliance
			@kepribadian="Dominance"
		elsif @influence>@dominance && @influence>@steadiness && @influence>@compliance
			@kepribadian="Influence"
		elsif @steadiness>@influence && @steadiness>@dominance && @steadiness>@compliance
			@kepribadian="Steadiness"
		elsif @compliance>@influence && @compliance>@dominance && @compliance>@steadiness
			@kepribadian="Compliance"
		elsif @dominance==@influence && @dominance>@steadiness && @dominance>@compliance	&& @influence>@steadiness && @influence>@compliance
			@kepribadian="Antara Dominance & Influence"
		elsif ((@dominance==@steadiness) && (@dominance>@influence) && (@dominance>@compliance)	&& (@influence<@steadiness) && (@steadiness>@compliance))
			@kepribadian="Antara Dominance & Steadiness"
		elsif @dominance==@compliance && @dominance>@steadiness && @dominance>@influence	&& @compliance>@steadiness && @influence<@compliance
			@kepribadian="Antara Dominance & Compliance"
		elsif @influence==@compliance && @influence>@steadiness && @dominance<@influence	&& @compliance>@steadiness && @dominance<@compliance
			@kepribadian="Antara Influence & Compliance"
		elsif ((@influence==@steadiness) && (@influence>@dominance) && (@influence>@compliance)	&& (@steadiness>@compliance) && (@steadiness>@dominance))
			@kepribadian="Antara Influence & Steadiness"
		elsif @steadiness==@compliance && @dominance<@steadiness && @steadiness>@influence	&& @compliance>@influence && @dominance<@compliance
			@kepribadian="Antara Steadiness & Compliance"
		else
			@kepribadian="Karakter anda rumit"
		end

		@user = current_user.update_attributes(:kepribadian => @kepribadian)
	end

	private
		def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:jawaban_1, :jawaban_2, :jawaban_3, :jawaban_4, :jawaban_5, :jawaban_6, :jawaban_7, :jawaban_8, :jawaban_9, :jawaban_10, :jawaban_11, :jawaban_12, :jawaban_13, :jawaban_14, :jawaban_15, :jawaban_16, :jawaban_17, :jawaban_18, :jawaban_19, :jawaban_20, :jawaban_21, :jawaban_22, :jawaban_23, :jawaban_24, :user_id)
    end
end
