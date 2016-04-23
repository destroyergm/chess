require_relative "game_piece"

class King < GamePiece
	def initialize(position)
		super :king, "K"
		@position = position
	end
end