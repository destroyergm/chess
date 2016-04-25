require_relative "../game/pawn"

describe Pawn do

	it "Creates a new white piece at a given position" do
		pawn = Pawn.new [2,3], "White"
		expect(pawn.position).to eql [2,3]
		expect(pawn.color).to eql "White"
		expect(pawn.game_symbol).to eql "♙"
	end

	it "Creates a new black piece at a given position" do
		pawn = Pawn.new [3,2], "Black"
		expect(pawn.position).to eql [3,2]
		expect(pawn.color).to eql "Black"
		expect(pawn.game_symbol).to eql "♟"
	end
end