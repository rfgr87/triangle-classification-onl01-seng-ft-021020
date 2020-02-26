class Triangle
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end
  
  def kind
    if @x == @y && @x == @z
      :equilateral 
    elsif @x == @y || @y == @z || @z == @x 
      :isosceles 
    else 
      :scalene 
    else 
      validate_triangle
    end 
  end

  def validate_triangle
    if @x <= 0 || @y <= 0 || @z <= 0 || @x + @y > @z || @x + @z > @y || @y +@z > @x
      raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "not valid"
    end
  end 

end
