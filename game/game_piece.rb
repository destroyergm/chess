class GamePiece

	attr_accessor :type, :color, :position, :game_symbol, :moved
	# Color can either be "Black" or "White"

	def initialize (type, game_symbol)
		@type = type
		@game_symbol = game_symbol
		@moved = false
	end

	# Inherited method in subclasses to get valid moves list
	def get_available_moves grid
		raise "FunctionNotImplemented"
	end

	def first_move?
		not @moved
	end
end