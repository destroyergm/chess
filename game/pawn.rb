require_relative "game_piece"

class Pawn < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "pawn", color == "Black" ? "♟" : "♙"
	end

	def get_available_moves grid
		moves = []
		row = @position[0]
		col = @position[1]
		if @color == "White"
			moves << [row-2,col] unless @moved || !grid[row-2][col].nil?
			moves << [row-1,col] unless !grid[row-1][col].nil?
			if !grid[row-1][col+1].nil? && grid[row-1][col+1].color != @color 
				moves << [row-1,col+1]
			end
			if !grid[row-1][col-1].nil? && grid[row-1][col-1].color != @color 
				moves << [row-1,col-1]
			end
		elsif @color == "Black"
			moves << [row+2,col] unless @moved
			moves << [row+1,col]
			if !grid[row+1][col+1].nil? && grid[row+1][col+1].color != @color
				moves << [row+1,col+1]
			end
			if !grid[row+1][col-1].nil? && grid[row+1][col-1].color != @color
				moves << [row+1,col-1]
			end
		end
		
		moves
	end

end