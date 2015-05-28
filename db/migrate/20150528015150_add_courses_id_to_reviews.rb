class AddCoursesIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :courses_id, :integer
  end
end
