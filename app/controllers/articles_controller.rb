class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize
  load_and_authorize_resource
	def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  	def authorize
      if !current_user.has_role? :admin
        render plain:"No access for you!"
      end
    end

    def article_params
      params.require(:article).permit(:title, :text)
    end
end
