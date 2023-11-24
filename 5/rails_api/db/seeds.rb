# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Users.create([
  {
    first_name: "Pio",
    last_name: "Cecca",
    email: "piocecca@ciao.pl"
  },

  {
    first_name: "Fra",
    last_name: "Pio",
    email: "frapio@ciao.pl"
  }
]
)

# Modificato il seed devo lanciare rails db:seed

# Poi rails c per entrare in console

# Nella console posso controllare gli users con Users.find(2)
