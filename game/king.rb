require_relative "game_piece"

class King < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "king", color == "Black" ? "♚" : "♔"
	end
end