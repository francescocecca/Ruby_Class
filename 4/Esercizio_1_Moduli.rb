module Cerchio

  def circumference
    circ=2*3.14*@r
    puts "circumference is #{circ}"
  end

  def area
    area=3.14*@r*@r
    puts "area is #{area}"
  end

end

module Rettangolo

  def circumference
    per=@a*2+@b*2
    puts "circumference is #{per}"
  end

  def area
    area=@a*@b
    puts "area is #{area}"
  end
end
