# Module works as an instance

module DogModule
  def bark
    puts "I'm barking"
  end
end

module CatModule
  def meow
    puts "I'm meowing"
  end
end

module BirdModule
  def fly
    puts "I'm flying"
  end
end

module MyModule
  class TestClass
    def self.test
      puts "TestClass in MyModule"
    end
  end
end

class TestClass
  def self.test
    puts "TestClass outside MyModule"
  end
end

TestClass.test
MyModule::TestClass.test
