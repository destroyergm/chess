require_relative "board"

class Game
	def initialize
		@board = Board.new
		@color = "White"
	end

	def start
		loop do
			system 'clear'
			@board.draw_board
			puts "Move format: 'a4 a5' (move piece from a4 to a5 if the move is valid)"
			print "Please enter a move for #{@color}: "
			from, to = gets.chomp.split
			from = Game::to_matrix_coordinates(from)
			to = Game::to_matrix_coordinates(to)
			# TODO: Check if the move is valid regarding the chess rules
			@board.move_piece(from,to)
			@color == "White" ? @color = "Black" : @color = "White" 
		end
	end

	def self.to_matrix_coordinates(chess_coordinates)
		column = chess_coordinates[0].ord - 'a'.ord
		row = 8 - chess_coordinates[1].to_i
		# TODO: Add checks for inbound rules
		[row,column]
	end
end