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

	def trace_path(*vectors)
		moves = []
		row = @position[0]
		col = @position[1]
		vectors.each do |vector|
			case vector
			when [1,0] then moves << Util::from_to([row,col+1],[row,7])
			when [0,1] then moves << Util::from_to([row-1,col],[0,col])
			when [-1,0] then moves << Util::from_to([row,col-1],[row,0])
			when [0,-1] then moves << Util::from_to([row+1,col],[7,col])
			end
		end
		puts "Found valid moves #{moves}"
		moves
	end
end