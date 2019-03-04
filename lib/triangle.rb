class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind(triangle)
    if (@side_1 + @side_2) == (@side_2 + @side_3)
      :equilateral
    elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
      :isosceles
    elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
      :scalene
      elsif (@side_1 <=0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
      else (@side_2 + @side_3 <= @side_1) || (@side_3 + @side_1 <= @side_2) || (@side_2 + @side_1 <= @side_3)
      raise TriangleError
    end
  end

  class TriangleError < StandardError

    def message
      "xyz"
    end



  end


end
