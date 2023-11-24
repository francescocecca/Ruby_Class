class CreateTestStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :test_students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :semester
      t.timestamps
    end
  end
end
