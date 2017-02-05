require 'spec_helper'
require './connect_four'

describe ConnectFour do

	before (:example) do
		c = ConnectFour.new
	end
	
	describe "#initialize" do
		it "initializes with proper values" do
			expect().to eq()
			expect().to eq()
		end
	end

	describe "#update_board_array" do
			it "places token correctly in board" do
				expect().to eq()
				expect().to eq()
			end
	end

	describe "#column_choice" do
		context "player chooses available column" do
			it "places proper token" do
				expect().to eq()
				expect().to eq()
			end
			it "places token in correct position" do
				expect().to eq()
				expect().to eq()
			end
		end
		context "player chooses column that is full" do
			it "sends column full error message" do
				expect().to eq()
				expect().to eq()
			end
		end
		context "player input not accepted" do
			it "sends input error message" do
				expect().to eq()
				expect().to eq()
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
		it "returns true if game is a draw" do
			expect().to eq()
			expect().to eq()
		end
	end

	describe "#valid_move?" do
		it "returns true if column not full" do
			expect().to eq()
			expect().to eq()
		end
	end

	desribe "#play_again" do
		it "returns true if choice is 'y' or 'yes'" do
			expect().to eq()
			expect().to eq()
		end
	end

end