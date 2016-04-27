require_relative "game_piece"

class Rook < GamePiece
	def initialize(position, color, grid)
		@position = position
		@color = color
		super "rook", color == "Black" ? "♜" : "♖", grid
	end

	def get_available_moves
		trace_path([1,0],[0,1],[0,-1],[-1,0])
	end
end