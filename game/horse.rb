require_relative "game_piece"

class Horse < GamePiece
	def initialize(position, color, grid)
		@position = position
		@color = color
		super "horse", color == "Black" ? "♞" : "♘", grid
	end

	def get_available_moves
		moves = []
		row = position[0]
		col = position[1]

		moves << [row-2,col+1] unless row-2 < 0 && col+1 > 7 && (!grid[row-2][col+1].nil? && grid[row-2][col+1].color != @color)
		moves << [row-2,col-1] unless row-2 < 0 && col-1 < 0 && (!grid[row-2][col-1].nil? && grid[row-2][col-1].color != @color)
		moves << [row+2,col+1] unless row+2 > 7 && col+1 > 7 && (!grid[row+2][col+1].nil? && grid[row+2][col+1].color != @color)
		moves << [row+2,col-1] unless row+2 > 7 && col-1 < 0 && (!grid[row+2][col-1].nil? && grid[row+2][col-1].color != @color)
		
		moves << [row-1,col+2] unless row-1 < 0 && col+2 > 7 && (!grid[row-1][col+2].nil? && grid[row-1][col+2].color != @color)
		moves << [row+1,col+2] unless row+1 > 7 && col+2 > 7 && (!grid[row+1][col+2].nil? && grid[row+1][col+2].color != @color)
		moves << [row+1,col-2] unless row+1 > 7 && col-2 < 0 && (!grid[row+1][col-2].nil? && grid[row+1][col-2].color != @color)
		moves << [row-1,col-2] unless row-1 < 0 && col-2 < 0 && (!grid[row-1][col-2].nil? && grid[row-1][col-2].color != @color)
		
		moves
	end
end