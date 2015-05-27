class CreateGolfcourses < ActiveRecord::Migration
  def change
    create_table :golfcourses do |t|
      t.string :name
      t.string :state
      t.string :county
      t.string :city

      t.timestamps null: false
    end
  end
end
