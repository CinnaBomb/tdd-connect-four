require 'spec_helper'
require './connect_four'

describe ConnectFour do

	before (:context) do
		@c = ConnectFour.new
	end
	
	describe "#initialize" do
		it "initializes with proper values" do
			expect(@c.player).to eq(1)
			expect(@c.board_array).to eq(Array.new(7) {Array.new(6, " ")})
		end
	end

	describe "#update_board_array" do
		it "places multiple tokens correctly in board" do
			expect(@c.update_board_array(1, 1)).to eq([[" ", " ", " ", " ", " ", " "], ["⚪", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "]]
				)
			expect(@c.update_board_array(2, 1)).to eq([[" ", " ", " ", " ", " ", " "], ["⚪", "⚫", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " "]]
				)
		end
	end

	describe "#token" do
		it "chooses correct token" do
			expect(@c.token(1)).to eq("\u26AA")
			expect(@c.token(2)).to eq("\u26AB")
		end
	end

	describe "#valid_column?" do
		context "given an empty board" do
			it "returns true for 1-7 and false outside of range" do
				expect(@c.valid_column?(0)).to eq(false)
				expect(@c.valid_column?(1)).to eq(true)
				expect(@c.valid_column?(7)).to eq(true)
				expect(@c.valid_column?(8)).to eq(false)
			end
		end
		context "given a full column" do
			it "returns false" do
				@c.board_array[1]= ["⚪", "⚫","⚪", "⚫","⚪", "⚫"]
				expect(@c.valid_column?(2)).to eq(false)
			end
		end
	end

	describe "#column_choice" do
		context "player chooses available column" do
			it "returns column choice" do
				expect(@c.column_choice(1, 1)).to eq(1)
				expect(@c.column_choice(1, 7)).to eq(7)
			end
		end
	end
	describe "#board_visual" do
		it "displays board properly" do
			expect().to eq()
			expect().to eq()
		end
	end

	describe "#game_won?" do
		it "returns true if game won" do
			expect().to eq()
			expect().to eq()
		end
	end
	
describe "#draw?" do
	context "given a board with a win" do
		it "returns false" do
			expect().to eq()
		end
		context "given a full board with no wins" do
			it "returns true"
			expect().to eq()
		end
	end
end

describe "#valid_move?" do
	it "returns true if column not full" do
		expect().to eq()
		expect().to eq()
	end
end

	describe "#play_again" do
		it "returns true if choice is 'y' or 'yes'" do
			expect().to eq()
			expect().to eq()
		end
	end

end