# Create a Figure class and two subclasses, Square and Rectangle.
# Each figure should have a method which allows calculating the area and circumference
# Store the metods in separete modules
# Calcoulate how many sqares and rectangels were created using class instance variables and
# how many figures in total were creatd using class variable

require_relative 'Esercizio_1_Moduli.rb'

class Figure

  @@population=0 # class variable

  def initialize
    @@population += 1
    self.class.increase_population
  end

  def self.increase_population
    @population += 1
  end

  def self.count
    @@population
  end

  def self.count2
    @population
  end

end

class Square < Figure

  @population=0

  def initialize(r)
    super()
    @r=r
  end

  include Cerchio

end

class Rectangle < Figure

  @population=0

  def initialize(a,b)
    super()
    @a=a
    @b=b
  end

include Rettangolo

end

square1=Square.new(3)

square1.circumference
square1.area

rectangle1=Rectangle.new(2,5)

rectangle1.circumference
rectangle1.area

puts "Number of rectangle #{Rectangle.count2}"
puts "Number of square #{Square.count2}"
