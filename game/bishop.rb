require_relative "game_piece"

class Bishop < GamePiece
	def initialize(position, color, grid)
		@position = position
		@color = color
		super "bishop", color == "Black" ? "♝" : "♗", grid
	end

	def get_available_moves
		trace_path([1,1],[-1,1],[-1,-1],[1,-1])
	end
end