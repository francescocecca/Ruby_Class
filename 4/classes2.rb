class Foo
  def an_istance_method
    puts "I'm instance method"
  end

  def self.class_method
    puts "I'm class method"
  end
end

foo_1=Foo.new
foo_2=Foo.new

foo_1.an_istance_method
foo_2.an_istance_method
Foo.class_method

def foo_1.singleton_method
  puts "I'm a singleton method"
end

foo_1.singleton_method

# Ovviamente foo2 non avrà accesso a singleton_method

# C'è anche un altro modo per creare metodi

class << foo_2
  def another_singleton_method
    puts "I'm another singleton method"
  end
end

foo_2.another_singleton_method
