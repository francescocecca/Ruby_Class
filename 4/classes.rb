class Person
    def initialize(name)
        @name=name
    end

    def greet
        puts "Hello I am #{@name}"
    end

    def what
        puts "I am an instance method #{self}"
    end

    def self.what
        puts "I am a class method #{self}"
    end
end

person1=Person.new("John")
person1.greet

# Posso notare la differenza con self.what e what
# Un metodo self non può essere usato da person1, ma soltanto da Person (classe)

person1.what
Person.what

class Person
    def bye
        puts "Bye Bye"
    end
end

person1.bye

# Se definisco un metodo in una classe, l'oggetto lo riconosce -> posso usare person1.bye
