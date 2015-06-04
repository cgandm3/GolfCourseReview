class Review < ActiveRecord::Base
	belongs_to :golfcourse
	belongs_to :user
end
