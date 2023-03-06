# frozen_string_literal: true

class Point
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def method_missing(m, *args, &block)
    puts "Delegating #{m}"
    case m.to_s
    when 'get_x'
      @x
    when 'get_y'
      @y
    when 'get_z'
      @z
    else
      super
    end
  end

  def respond_to_missing?(_)
    true
  end
end

point = Point.new(1, 2, 3)
p point.get_x
p point.get_y
p point.get_z
p point.get_k
