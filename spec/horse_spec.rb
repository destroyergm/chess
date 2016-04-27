require_relative "../game/horse"

describe Horse do
	let(:board) { Board.new }

	it "Creates a new white horse at a given position" do
		horse = Horse.new [2,3], "White", nil
		expect(horse.position).to eql [2,3]
		expect(horse.color).to eql "White"
		expect(horse.game_symbol).to eql "♘"
	end

	it "Creates a new black horse at a given position" do
		horse = Horse.new [3,2], "Black", nil
		expect(horse.position).to eql [3,2]
		expect(horse.color).to eql "Black"
		expect(horse.game_symbol).to eql "♞"
	end
end