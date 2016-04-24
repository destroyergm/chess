require_relative "game_piece"

class Horse < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "horse", color == "Black" ? "♞" : "♘"
	end
end