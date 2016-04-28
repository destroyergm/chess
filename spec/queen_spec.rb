require_relative "../game/queen"

describe Queen do

	let(:board) { Board.new }

	it "Creates a new white queen at a given position" do
		queen = Queen.new [3,4], "White", nil
		expect(queen.position).to eql [3,4]
		expect(queen.color).to eql "White"
		expect(queen.game_symbol).to eql "♕"
	end
	
	it "Creates a new black queen at a given position" do 
		queen = Queen.new [3,4], "Black", nil
		expect(queen.position).to eql [3,4]
		expect(queen.color).to eql "Black"
		expect(queen.game_symbol).to eql "♛"
	end
end