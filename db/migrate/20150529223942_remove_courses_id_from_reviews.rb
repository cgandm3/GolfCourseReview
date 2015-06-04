class RemoveCoursesIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :courses_id, :integer
  end
end
