class GamePiece

	attr_accessor :type, :color, :position

	def initialize (type, game_symbol)
		@type = type
		@game_symbol = game_symbol
	end

	# Inherited method in subclasses to get valid moves list
	def get_available_moves
	end
end