class CreateJoinTableStudentCourse < ActiveRecord::Migration[7.1]
  def change
    create_join_table :students, :courses, table_name: :active_courses
  end
end
