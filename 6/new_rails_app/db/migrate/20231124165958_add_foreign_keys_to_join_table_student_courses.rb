class AddForeignKeysToJoinTableStudentCourses < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :active_courses, :students
    add_foreign_key :active_courses, :courses
  end
end
