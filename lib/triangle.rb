class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind(triangle)
    if (@side_1 <=0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
        rescue TriangleError => error
          puts error.message
      end
    elsif (@side_2 + @side_3 <= @side_1) || (@side_3 + @side_1 <= @side_2) || (@side_2 + @side_1 <= @side_3)
      raise TriangleError
        rescue TriangleError => error
          puts error.message
      end
    else
      if (@side_1 + @side_2) == (@side_2 + @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end
  end

  class TriangleError < StandardError

    def message
      "Illegal triangle"
    end
  end
end

raise PartnerError
     rescue PartnerError => error
         puts error.message
