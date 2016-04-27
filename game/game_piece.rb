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


end