require_relative "board"
require "yaml"

class Game

	def initialize
		@board = Board.new
		@color = "White"
	end

	def start(load=nil)
		loop do
			system 'clear'
			@board.draw_board
			puts "Move format: 'a4 a5' (move piece from a4 to a5 if the move is valid)"
			puts "You can type 'save' to save the game at any time"
			print "Please enter a move for #{@color}: "
			input = gets.chomp
			loop do
				if input == "save"
					puts "Saved game to file"
					puts "Press Enter key to exit ..."
					gets
					save_game
					exit(1)
				elsif input =~ /^[a-h][1-8]\s[a-h][1-8]$/
					break
				else
					puts "Invalid input, please input again: "
					input = gets.chomp
				end
			end
			from, to = input.split
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
		[row,column]
	end

	private
	def save_game
		serialized = YAML::dump(self)
		File.open("saves/sav.chs", "w") { |file| file.print serialized }
	end
end