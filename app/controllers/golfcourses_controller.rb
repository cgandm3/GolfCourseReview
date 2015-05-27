class GolfcoursesController < ApplicationController
	def index
		@courses = Golfcourse.all
	end

	def show
		@courses = Golfcourse.find(params[:id])
	end

end
