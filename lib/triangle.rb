class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    if (@side_1 <=0) || (@side_2 <= 0) || (@side_3 <= 0)
      begin
      raise TriangleError
      end
    else (@side_2 + @side_3 <= @side_1) || (@side_3 + @side_1 <= @side_2) || (@side_2 + @side_1 <= @side_3)
      begin
      raise TriangleError
      end
      else (@side_1 + @side_2) == (@side_2 + @side_3)
        return :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        return :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        return :scalene
    end
  end

  class TriangleError < StandardError

    def message
      "Illegal triangle"
    end
  end
end
