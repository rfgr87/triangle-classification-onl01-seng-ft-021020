class Triangle
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end
  
  def kind
    if @x <= 0 || @y <= 0 || @z <= 0 || @x + @y < @z || @x + @z < @y || @y +@z < @x
      begin
        validate
      rescue TriangleError => error
          puts error.message
      end
    elsif @x == @y && @x == @z
      :equilateral 
    elsif @x == @y || @y == @z || @z == @x 
      :isosceles 
    else 
      :scalene 
    end
  end
  
  def validate
    raise TriangleError
  end
    
    
  class TriangleError < StandardError
    def message
      "not valid"
    end
  end 

end
