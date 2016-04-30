require_relative "../game/bishop"

describe Bishop do

	let(:board) { Board.new }

	it "Creates a new white bishop at a given position" do
		bishop = Bishop.new [3,4], "White", nil
		expect(bishop.position).to eql [3,4]
		expect(bishop.color).to eql "White"
		expect(bishop.game_symbol).to eql "♗"
	end
	
	it "Creates a new black bishop at a given position" do 
		bishop = Bishop.new [3,4], "Black", nil
		expect(bishop.position).to eql [3,4]
		expect(bishop.color).to eql "Black"
		expect(bishop.game_symbol).to eql "♝"
	end
end