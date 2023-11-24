class CreateJoinTableStudentCourse < ActiveRecord::Migration[7.1]
  def change
    create_join_table :test_students, :test_courses, table_name: :active_courses
  end
end
