class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  
  def kind
    sides = [self.side1, self.side2, self.side3].sort
    if sides[0] + sides[1] <= sides[2] || sides.any? {|x| x<= 0} || sides.length != 3
      begin
        raise TriangleError
      end
    else  
      case sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else        :scalene
      end
    end

    
  end

  class TriangleError < StandardError
      puts "This is not a valid triangle!"
  end

end
