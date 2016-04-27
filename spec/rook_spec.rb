require_relative "../game/rook"

describe Rook do

	let(:board) { Board.new }

	it "Creates a new white rook at a given position" do
		rook = Rook.new [3,4], "White", nil
		expect(rook.position).to eql [3,4]
		expect(rook.color).to eql "White"
		expect(rook.game_symbol).to eql "♖"
	end
	
	it "Creates a new black rook at a given position" do 
		rook = Rook.new [3,4], "Black", nil
		expect(rook.position).to eql [3,4]
		expect(rook.color).to eql "Black"
		expect(rook.game_symbol).to eql "♜"
	end
end