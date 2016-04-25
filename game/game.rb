require_relative "board"

class Game
	def initialize
		@board = Board.new
		@color = "White"
	end

	def start
		system 'clear'
		@board.draw_board

		print "Please enter a move for #{@color}: "
		input = Game::to_matrix_coordinates(gets.chomp)
	end

	def self.to_matrix_coordinates(chess_coordinates)
		row = chess_coordinates[0].ord - 'a'.ord
		column = chess_coordinates[1].to_i
		[row,column]
	end
end