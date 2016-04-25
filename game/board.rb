require_relative "game_piece"
require_relative "king"
require_relative "queen"
require_relative "bishop"
require_relative "pawn"
require_relative "rook"
require_relative "horse"

class Board

	attr_accessor :grid, :rows, :cols
	
	def initialize
		@rows = 8
		@cols = 8
		@grid = Array.new(rows) { Array.new(cols) }
		
		# Fills the game grid with data

		# Pawns
		(0...@rows).each do |i|
			(0...@cols).each do |j|
				@grid[i][j] = Pawn.new [i,j], "Black" if i == 1
				@grid[i][j] = Pawn.new [i,j], "White" if i == 6
			end
		end

		# Rest of the pieces
		col = "Black"
		row = 0
		2.times do 
			@grid[row][0] = Rook.new [row,0], col
			@grid[row][7] = Rook.new [row,0], col
		
			@grid[row][1] = Horse.new [row,1], col
			@grid[row][6] = Horse.new [row,6], col

			@grid[row][2] = Bishop.new [row,2], col
			@grid[row][5] = Bishop.new [row,5], col

			@grid[row][3] = Queen.new [row,3], col
			@grid[row][4] = King.new [row,4], col

			# Second iteration fill the white pieces
			row = 7
			col = "White"
		end
	end

	def move_piece(from, to)
		piece = @grid[from[0]][from[1]]
		piece.moved = true
		piece.position = to

		@grid[to[0]][to[1]] = piece
		@grid[from[0]][from[1]] = nil
	end

	# Returns false if the move is valid, true if the move is not valid
	def check?(from, to, player)
		piece = @grid[from[0]][from[1]]
		return true if piece.nil?
		return true if piece.color != player

		valid_moves = piece.get_available_moves @grid

		puts "Available moves: #{valid_moves.inspect}"
		gets
		puts "Moving from #{from} to #{to}"

		return true unless valid_moves.include? to 

		false
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