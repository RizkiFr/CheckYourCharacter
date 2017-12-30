class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
	def index
    @articles = Article.search(params[:term])
    @hotview = Article.all.order(view: :desc).limit(5)
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @user=current_user
    @article = Article.find(params[:id])
    @count = 1
    @count += @article.view
    @article.update(view: @count)
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path, notice: 'Data berhasil di simpan'
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path, notice: 'Data berhasil di ubah'
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
    def article_params
      params.require(:article).permit(:title, :text, :user_id, :view)
    end
end
