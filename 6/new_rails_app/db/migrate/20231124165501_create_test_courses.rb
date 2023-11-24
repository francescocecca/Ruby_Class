class CreateTestCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :test_courses do |t|
      t.string :name
      t.integer :ects
      t.timestamps
    end
  end
end
