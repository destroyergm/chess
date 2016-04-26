require_relative "game_piece"

class Rook < GamePiece
	def initialize(position, color)
		@position = position
		@color = color
		super "rook", color == "Black" ? "♜" : "♖"
	end

	def get_available_moves grid
		moves = []
		row = @position[0]
		col = @position[1]

		(row+1..7).each do |i|
			if !grid[i][col].nil?
				# If it's an enemy piece, you can move there
				# If it's an ally piece, block movement
				break if grid[i][col].color == @color
				moves << [i,col]
				break
			end
			moves << [i,col]
		end

		(row-1).downto(0) do |i|
			if !grid[i][col].nil?
				# If it's an enemy piece, you can move there
				# If it's an ally piece, block movement
				break if grid[i][col].color == @color
				moves << [i,col]
				break
			end
			moves << [i,col]
		end

		(col+1..7).each do |i|
			if !grid[row][i].nil?
				# If it's an enemy piece, you can move there
				# If it's an ally piece, block movement
				break if grid[row][i].color == @color
				moves << [row,i]
				break
			end
			moves << [row,i]
		end

		(col-1).downto(0) do |i|
			if !grid[row][i].nil?
				# If it's an enemy piece, you can move there
				# If it's an ally piece, block movement
				break if grid[row][i].color == @color
				moves << [row,i]
				break
			end
			moves << [row,i]
		end

		moves
	end
end