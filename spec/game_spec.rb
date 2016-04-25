require_relative "../game/game"

describe Game do
	describe "Game::to_matrix_coordinates" do
	it "Converts chess coordinates to matrix coordinates" do
		expect(Game::to_matrix_coordinates("b2")).to eql [1,2]
	end
end
end