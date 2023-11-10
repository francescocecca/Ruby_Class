# Includo il file module.rb

require_relative 'module.rb'

class Animal
  @@population=0 # class variable
  @population=0

  def initialize
    @@population += 1
    puts "Calling animal class #{self}"
    puts "Calling animal class #{self.class}"
    self.class.increase_population
  end

  def self.increase_population
    @population += 1
  end

  def self.count2
    @population
  end

  def self.count
    @@population
  end

  def count
    @@population
  end
end

aniaml1=Animal.new
animal2=Animal.new
animal3=Animal.new

# Create a subclass

class Cat < Animal
  @population=0 # class instance variable
  include CatModule
end

class Dog < Animal
  @population=0 # class instance variable
  include DogModule
end

cat1=Cat.new
cat2=Cat.new
cat3=Cat.new

dog1=Dog.new
dog2=Dog.new

# With the two puts, i will receive the same result

puts "Number of animals #{cat1.count}"

puts "Number of animals #{Animal.count}"

# Se voglio il numero di gatti o cani

puts "Number of cats #{Cat.count2}"

# Uso le funzioni definite in module.rb

dog1.bark
cat2.meow
