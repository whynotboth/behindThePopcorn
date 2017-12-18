class ReviewsController < ApplicationController
	http_basic_authenticate_with :name=> "tommy", :password => "admin"
	#public methods

	#please ignore this line,reviews/new it is only a test
	#index: usually the first method in the controller
	#it is here as a tool to show all of the reviews in the Review model
	#this is the method that shows up when the url '/reviews/' is requested
	def index
		@reviews = Review.all

	end

	def show
		@review = Review.find(params[:id])
	end

	def edit
		@review = Review.find(params[:id])
	end

	def new

	end

	def create
		@review = Review.new(review_params)
		@review.save
		redirect_to @review
	end

	def update
		@review = Review.find(params[:id])

		if @review.update(review_params)
			redirect_to @review
		else
			render 'edit'
		end

	end

#private methods
	private
		def review_params
			params.require(:review).permit(:title, :body, :image, :prescription, :quickdirt, :release, :score, :scoreRT)
		end

end
