require_relative "game_piece"

class Bishop < GamePiece
	def initialize(position, color, grid)
		@position = position
		@color = color
		super "bishop", color == "Black" ? "♝" : "♗", grid
	end
end