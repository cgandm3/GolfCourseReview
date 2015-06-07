class ReviewsController < ApplicationController
	before_action :authorized?, except: :index

	def index
		@golfcourse = get_golfcourse
		@review = Review.find.all
	end

	def show
		@golfcourse = get_golfcourse
  		@review = get_review
  	end
	
	def new
		@golfcourse = get_golfcourse
		@review = @golfcourse.reviews.build
	end

	def edit
		@review = get_review
		redirect_to golfcourse_path(Golfcourse.find(params[:golfcourse_id])) unless @review.user == current_user
	end

	def update
		@golfcourse = get_golfcourse
		@review = get_review
		review = Review.find(params[:id])
		if review.user == current_user
			review.update_attributes(review_params)
			@review = get_review
		else
			redirect_to edit_golfcourse_review_path
		end
	end

	def create
		@golfcourse = get_golfcourse
		@review = @golfcourse.reviews.new(review_params)
		@review.user = current_user
		@review.save
		redirect_to golfcourses_path 
	end

	

	private
		def review_params
			params.require(:review).permit(:comment, :star_rating)
		end

		def get_golfcourse
			Golfcourse.find(params[:golfcourse_id])
		end

		def get_review
			get_golfcourse.reviews.find(params[:id])
		end
end
