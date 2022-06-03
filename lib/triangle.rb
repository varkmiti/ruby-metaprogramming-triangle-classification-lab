require 'pry'

class Triangle

  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2 
    @l3 = l3
  end 

  def kind 
    if @l1 <= 0 or @l2 <= 0 or @l3 <= 0
      raise TriangleError
    elsif @l1 + @l2 <= @l3 or @l2 +@l3 <= @l1 or @l1 + @l3 <= @l2
      raise TriangleError 
    elsif @l1 == @l2 and @l2 == @l3
      return :equilateral
    elsif @l1 == @l2 or @l2 == @l3 or @l1 == @l3
      return :isosceles
    elsif @l1 != @l2 and @l2 != @l3 and @l1 != @l3
      return :scalene
    end  
  end 

  class TriangleError < StandardError
  end
end
