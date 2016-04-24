require_relative "game_piece"

class Pawn < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "pawn", color == "Black" ? "♟" : "♙"
	end
end