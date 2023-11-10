# Write a method that takes a string as input argoument ans returns the information about how many time a letter appears in the string (remove the whitespace)
# EXAMPLE: input: hello -> output: letter h appears 1 time, letter e 1 time, letter l 2 times, letter o 1 time
# Hello -> hello

def count_letters(text)

    letters = {}

    text.each_char{ |letter|

    unless letters.key?(letter)
        letters[letter]=1

    else
        letters[letter] += 1  
    end

    }

    letters.each { |key, value|
        puts "Letter #{key} appears #{value} time(s)"
    }

end

input="Hello guysS"
count_letters(input.downcase)