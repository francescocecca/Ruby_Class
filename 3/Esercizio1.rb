# Write a method that takes a person's full name as input and returns initials"
# EXAMPLE: input: John Smith -> output: J.S.

input="Francesco Cecca"

array=input.split("")

i=0

until array[i].blank?

    i += 1

end

puts "#{array[0]}. #{array[i+1]}."

