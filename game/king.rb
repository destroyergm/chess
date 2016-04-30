require_relative "game_piece"

class King < GamePiece
	def initialize(position, color, grid)
		@position = position
		@color = color
		super "king", color == "Black" ? "♚" : "♔", grid
	end
end