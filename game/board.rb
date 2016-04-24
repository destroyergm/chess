require_relative "game_piece"
require_relative "king"
require_relative "pawn"

class Board

	attr_accessor :grid, :rows, :cols
	
	def initialize
		@rows = 8
		@cols = 8
		@grid = Array.new(rows) { Array.new(cols) }
		
		# Fills the game grid with data
		(0...@rows).step(1) do |i|
			(0...@cols).step(1) do |j|
				@grid[i][j] = Pawn.new [i,j], "Black" if i == 1
				@grid[i][j] = Pawn.new [i,j], "White" if i == 6
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
			@cols.times do |j| 
				if !@grid[i][j].nil?
					print "┃ #{@grid[i][j].game_symbol} "
				else
					print "┃   "
				end
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