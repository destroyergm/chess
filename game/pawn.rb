require_relative "game_piece"

class Pawn < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "pawn", color == "Black" ? "♟" : "♙"
	end

	def get_available_moves grid
		moves = []
		row = @position[0]
		col = @position[1]
		moves << [row,col+2] unless @moved
		moves << [row,col+1]
		
		moves
	end

end