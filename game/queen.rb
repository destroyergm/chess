require_relative "game_piece"

class Queen < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "queen", color == "Black" ? "♛" : "♕"
	end
end