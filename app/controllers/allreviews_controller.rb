class AllreviewsController < ApplicationController

	def index
		@reviews = Review.all
	end

	def show
		@review = Review.find(params[:id])
	end

	def edit
		@review = Review.find(params[:id])
	end
end
