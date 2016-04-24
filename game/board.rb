class Board

	attr_accessor :grid, :rows, :cols
	
	def initialize
		@rows = 8
		@cols = 8
		@grid = Array.new(rows) { Array.new(cols) }
		
		@grid.each do |row|
			row.map! do |element|
				element = 0
			end
		end
	end


	def draw_board
		# Header
		# ...

		# First line
		puts "\t\t  a   b   c   d   e   f   g   h"
		puts "\t\t┏━━━┳━━━┳━━━┳━━━┳━━━┳━━━┳━━━┳━━━┓"

		# Middle
		numeric_row = 8
		@rows.times do |i|
			print "\t#{numeric_row}\t"
			numeric_row -= 1
			@cols.times do 
				print "┃ ♟ "
			end
			print "┃\n"
			puts "\t\t┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫" if i < @rows-1
		end

		# Last line
		puts "\t\t┗━━━┻━━━┻━━━┻━━━┻━━━┻━━━┻━━━┻━━━┛"
		puts "\t\t  a   b   c   d   e   f   g   h"
	end
end

b = Board.new
b.draw_board