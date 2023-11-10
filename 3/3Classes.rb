
# class Person
   
#     attr_reader :last_name

#     # Class variable (the same for each object in the class)

#     @@population=0 
    
#     def initialize(first_name, last_name)

#         # Not the same for each object in the class

#         @first_name = first_name
#         @last_name = last_name

#         @@population += 1

#     end

#     def greeting
#         puts "Hello #{@first_name} #{@last_name}"
#     end

#     def reurn_first_name
#         @first_name
#     end

#     def self.population
#         @@population
#     end

# end

# person1 = Person.new("John","Smith")
# person2 = Person.new("Max", "Brady")

# person1.greeting

# puts person1.reurn_first_name
# puts person1.last_name

# puts Person.population

# person3 = Person.new("Jim","Lil")

# puts Person.population

#########################################


class Point2D
    def initialize(x,y)
        @x=x
        @y=y
    end

    def display_coordinates
        puts "X coordinate is #{@x}"
        puts "Y coordinate is #{@y}"
    end
        
end

# Point3d prende tutto cio che e' presente in point2d

class Point3D < Point2D

    def initialize(x,y,z)
        super(x,y)
        @z=z
    end

    def display_coordinates
        super
        puts "Z coordinate is #{@z}"
    end
end

point_2d_1=Point2D.new(3,6)
point_2d_1.display_coordinates

point_3d_1=Point3D.new(5,7,9)
point_3d_1.display_coordinates