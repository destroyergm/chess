require_relative "util"

class GamePiece

	attr_accessor :type, :color, :position, :game_symbol, :moved, :grid
	# Color can either be "Black" or "White"

	def initialize (type, game_symbol, grid)
		@type = type
		@game_symbol = game_symbol
		@moved = false
		@grid = grid
	end

	# Inherited method in subclasses to get valid moves list
	def get_available_moves
		raise "FunctionNotImplemented"
	end

	def first_move?
		not @moved
	end

	# Retuns valid moves in the given unit vectors array
	def trace_path(*vectors)
		moves = []
		row = @position[0]
		col = @position[1]
		vectors.each do |vector|
			case vector
			when [1,0] then moves += Util::from_to([row,col+1],[row,7],{:grid => grid, :color => color})
			when [0,1] then moves += Util::from_to([row-1,col],[0,col],{:grid => grid, :color => color})
			when [-1,0] then moves += Util::from_to([row,col-1],[row,0],{:grid => grid, :color => color})
			when [0,-1] then moves += Util::from_to([row+1,col],[7,col],{:grid => grid, :color => color})
			end
		end
		puts "Found valid moves #{moves}"
		moves
	end
end