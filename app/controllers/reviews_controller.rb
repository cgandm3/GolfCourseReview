class ReviewsController < ApplicationController
	def new
		@golfcourse = get_golfcourse
		@review = @golfcourse.reviews.build
	end

	def create
		@golfcourse = get_golfcourse
		@review = @golfcourse.reviews.create(review_params)
		redirect_to golfcourses_path 
	end

	private
		def review_params
			params.require(:review).permit(:comment)
		end

		def get_golfcourse
			Golfcourse.find(params[:golfcourse_id])
		end

		def get_review
			get_golfcourse.reviews.find(params[:id])
		end
end
