class TestCourse < ApplicationRecord
  has_and_belongs_to_many :students, join_table: :active_courses
end
