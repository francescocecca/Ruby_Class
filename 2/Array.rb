# Index starts from 0

person=["John","Doe",33,"Developer"]

puts "First name: #{person[0]}"
puts "Age: #{person[2]}"

# HASH, un po' more comodi degli array

person_data={"first_name" => "John", "last_name" => "Doe", "age" => 33, "job" => "Developer", 3=>66}
person_data['hobby']="Sports"

puts "Person's first name: #{person_data['first_name']}"
puts "Person's hobby: #{person_data['hobby']}"

# In questo caso non ho un valore, quindi non verra' semplicemente stampato

puts "Person's height: #{person_data['height']}"

# La chiave puo anche essere un numero

puts person_data[3]
