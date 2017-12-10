class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize
  load_and_authorize_resource
	def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_path
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to questions_path
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  private
    def authorize
      if !current_user.has_role? :admin
        render plain:"No access for you!"
      end
    end

    def question_params
      params.require(:question).permit(:pertanyaan, :pilihan_A, :pilihan_B, :pilihan_C, :pilihan_D, :no)
    end
end
