# Otterro valori differenti: ho 3 stringhe uguali, ma tre oggetti differenti, memorizzati in differenti locazioni di memoria

puts "String"

puts "aa".object_id
puts "aa".object_id
puts "aa".object_id

# Per i simboli invece otterro lo stesso valore

puts "Symbol"

puts :aa.object_id
puts :aa.object_id
puts :aa.object_id

puts :my_symbol.object_id

# In questo caso, potrei avere un sacco di persone nel database, quindi conviene usqare il simbolo first_name 

person1={:first_name => "John", :last_name => "Doe"}
person2={:first_name => "Mark", :last_name => "Bing"}

# Altro modo di creare un simbolo: sintassi completamente equivalente

person3={"first_name": "James", "last_name": "Doe"}

puts "Second person's name #{person2[:first_name]}"
puts "Third person's name #{person3[:first_name]}"

puts "Keys"
puts person1.keys

puts "Size"
puts person1.size

puts "Values"
puts person1.values

person1.each{|key,value| puts "The key is #{key} and the value is #{value}"}