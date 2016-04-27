class Util 
	def self.from_to(p1,p2,options = {})
		start = Point::from_array(p1)
		finish = Point::from_array(p2)
		grid = options[:grid]
		color = options[:color]

		moves = []	

		# Rows direction
		if start.y == finish.y
			if start.x > start.y
				(start.x..finish.x).each do |row|
					if !grid[row][start.y].nil?
						moves << [row,start.y] if grid[row][start.y].color != color
						break
					end
					moves << [row,start.y]
				end	
			else
				start.x.downto(0) do |row|
					if !grid[row][start.y].nil?
						moves << [row,start.y] if grid[row][start.y].color != color
						break
					end
					moves << [row,start.y]
				end
			end
		# Columns direction
		elsif start.x == finish.x
			if start.y < finish.y
				(start.y..finish.y).each do |col|
					if !grid[start.x][col].nil?
						moves << [start.x,col] if grid[start.x][col].color != color
						break
					end
					moves << [start.x,col]
				end				
			else
				start.y.downto(0) do |col|
					if !grid[start.x][col].nil?
						moves << [start.x,col] if grid[start.x][col].color != color
						break
					end
					moves << [start.x,col]
				end
			end
		end

		# TODO: Diagonal direction
		moves
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