require_relative "game_piece"

# TODO: Add move validation for King
class King < GamePiece
	def initialize(position, color, grid)
		@position = position
		@color = color
		super "king", color == "Black" ? "♚" : "♔", grid
	end
end