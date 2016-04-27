class Util 
	def self.from_to(p1,p2,options = {})
		start = Point::from_array(p1)
		finish = Point::from_array(p2)
		grid = options[:grid]
		color = options[:color]

		moves = []	

		# Rows direction

		# Columns direction
		if start.x == finish.x

		end

		moves << [0,0]
	end
end

class Point
	attr_accessor :x, :y

	def initialize(x,y)
		@x, @y = x, y
	end

	def self.from_array(array)
		raise "InvalidArrayCount" if array.count != 2
		p = Point.new array[0], array[1]
	end
end