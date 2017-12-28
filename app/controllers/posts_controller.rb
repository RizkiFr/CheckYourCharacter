class PostsController < ApplicationController
	before_action :authenticate_user!
	def index
		@user = current_user.id
		@posts = Article.where(:user_id => @user)
	end
end
