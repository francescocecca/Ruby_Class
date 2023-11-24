class CreateGoodUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :good_users do |t|

      t.timestamps
    end
  end
end
