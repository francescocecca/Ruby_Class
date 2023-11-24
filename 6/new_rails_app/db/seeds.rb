# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all # Serve perchè ogni volta che lacio l'app creerebbe nuovi utenti, quindi avrei doppi, tripli, ecc..
User.reset_pk_sequence # Per far partire gli id da 1
Role.destroy_all # In questo modo li creo sono una volta
Role.reset_pk_sequence


User.create(
  [{
    first_name: "John",
    last_name: "Doe",
    email: "jdoe@edu.pl"
    },
    {
      first_name: "Max",
      last_name: "Bo",
      email: "mbo@edu.pl"
    },
    {
      first_name: "Mill",
      last_name: "Lal",
      email: "mlal@edu.pl"
    },
    {
      first_name: "Pho",
      last_name: "Xin",
      email: "pxin@edu.pl"
    },
    {
      first_name: "Pio",
      last_name: "Cecca",
      email: "fcecca@edu.pl"
    }
  ]
)

Role.create(
  [{
    role_name: "admin"
   },
   {
    role_name: "subscriber"
   },
   {
    role_name: "editor"
   },
   {
    role_name: "reader"
   }
  ]
)

# Prima di usare rails c, lancio su command line rails db:seed
# Ho già gli user
