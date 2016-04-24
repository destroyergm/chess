require_relative "game_piece"

class Rook < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "rook", color == "Black" ? "♜" : "♖"
	end
end