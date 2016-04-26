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
			break if !grid[i][col].nil?
			moves << [i,col]
		end

		(row-1).downto(0) do |i|
			break if !grid[i][col].nil?
			moves << [i,col]
		end

		(col+1..7).each do |i|
			break if !grid[row][i].nil?
			moves << [row,i]
		end

		(col-1).downto(0) do |i|
			break if !grid[row][i].nil?
			moves << [row,i]
		end

		moves
	end
end