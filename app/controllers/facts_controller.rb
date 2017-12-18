class FactsController < ApplicationController
	def index
		@facts = Article.all
	end

	def show
		@fact = Article.find(params[:id])
	end
end
