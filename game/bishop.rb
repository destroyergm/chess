require_relative "game_piece"

class Bishop < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "bishop", color == "Black" ? "♝" : "♗"
	end
end