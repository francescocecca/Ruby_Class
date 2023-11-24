class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end

# Per farla funzionare devo usare rails db:migrate

# OCCHIO non può essere lanciata due volte, se voglio modificare qualcosa, ne devo creare un'altra

# esempio:
