class AddForeigKeyToUsers < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :users, :roles, column: :roles_id
  end
end
