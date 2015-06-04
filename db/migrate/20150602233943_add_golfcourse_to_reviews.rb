class AddGolfcourseToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :golfcourse, index: true
    add_foreign_key :reviews, :golfcourses
  end
end
