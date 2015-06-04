class GolfcoursesController < ApplicationController
	def index
		@golfcourses = Golfcourse.all
	end

	def show
		@golfcourses = Golfcourse.find(params[:id])
	end

end
