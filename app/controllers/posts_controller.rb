class PostsController < ApplicationController
	def index
		@user = current_user.id
		@posts = Article.where(:user_id => @user)
	end

	def new
    @post = Article.new
  end

  def edit
    @post = Article.find(params[:id])
  end

  def show
    @user=current_user
    @post = Article.find(params[:id])
  end

  def create
    @post = Article.new(post_params)

    if @post.save
      redirect_to posts_path, notice: 'Data berhasil di simpan'
    else
      render 'new'
    end
  end

  def update
    @post = Article.find(params[:id])

    if @post.update(post_params)
      redirect_to posts_path, notice: 'Data berhasil di ubah'
    else
      render 'edit'
    end
  end

  def destroy
    @post = Article.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      params.require(:article).permit(:title, :text, :user_id)
    end
end
