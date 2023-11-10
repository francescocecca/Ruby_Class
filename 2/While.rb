# This loop is nothing necessary, I can use 10.times{comando}, it's easier

# Per commentare tutto uso ctrl+/, stessa cosa per scommentare

x=5

while(x>0)

    puts "Hello"
    x-=1

end

puts "Type something"

while (text=gets.chomp) != "exit"

    puts "You typed #{text}"

end

# Usando until devo mettere == al posto di != (cambia la logica)

puts "Type something"

until (text=gets.chomp) == "exit"
   
    puts "You typed #{text}"

end