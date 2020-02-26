class Triangle
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end
  
  def kind
    if (@x + @y) > @z && (@x + @z) > @y && (@y +@z) > @x 
      if @x == @y && @x == @z 
        :equilateral 
      elsif @x == @y || @y == @z || @z == @x 
        :isosceles 
      else 
        :scalene 
      end 
    else
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
      
    
  end 
  
  
  class TriangleError < StandardError
    def message
      "not valid"
    end
  end 

end
