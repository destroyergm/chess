require_relative "board"
require "yaml"

class Game

	def initialize
		@color = "White"
	end

	def start(load=nil)
		# check for load call here
		@board = Board.new
		@board.grid[3][3] = Queen.new [3,3], "White", @board.grid
		@board.grid[3][0] = Horse.new [3,0], "Black", @board.grid
		@board.grid[3][6] = Horse.new [3,0], "White", @board.grid
				
		# else
		# @board = Board.new
		# @board.new_game
		loop do
			system 'clear'
			@board.draw_board
			puts "Move format: 'a4 a5' (move piece from a4 to a5 if the move is valid)"
			puts "You can type 'save' to save the game at any time"
			print "Please enter a move for #{@color}: "
			input = gets.chomp
			from, to = nil
			loop do
				if input == "save"
					puts "Saved game to file"
					puts "Press Enter key to exit ..."
					gets
					save_game
					exit
				elsif input =~ /^[a-h][1-8]\s[a-h][1-8]$/
					# input is valid only if it's in the board bounds
					from, to = input.split
					from = Game::to_matrix_coordinates(from)
					to = Game::to_matrix_coordinates(to)
					if @board.check?(from,to,@color) 
						# move is not valid
						puts "Invalid chess move"
						print "Please enter again: "
						input = gets.chomp
					else
						break
					end
				else
					puts "Invalid input, please input again: "
					input = gets.chomp
				end
			end
			

			@board.move_piece(from,to)
			# @color == "White" ? @color = "Black" : @color = "White" 
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