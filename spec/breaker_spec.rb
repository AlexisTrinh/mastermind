require "spec_helper"

module Mastermind
	describe Breaker do
		context "#generate_all_combinations" do
			it "returns the right array of combinations" do
				expect(Breaker.new("Alexis").generate_all_combinations[0]).to eq ["1","1","1","1"]	
			end
		end

		context "#is_possible?" do
			it "returns true correctly" do
				code = [["1","3","2","4"]]
				guess1 = Guess.new(["1","2","3","4"])
				guess2 = Guess.new(["5","5","5","5"])
				peg1 = Peg.new( {black: 2, white: 2} )
				peg2 = Peg.new( {black: 0, white: 0} )
				board = Board.new([guess1, guess2], [peg1, peg2])
				expect(Breaker.new("Alexis").is_possible?(["1", "3", "2", "4"], board)).to be_truthy
			end

				it "returns false correctly" do
				code = [["1","3","2","4"]]
				guess1 = Guess.new(["1","2","3","4"])
				guess2 = Guess.new(["5","5","5","5"])
				peg1 = Peg.new( {black: 2, white: 2} )
				peg2 = Peg.new( {black: 0, white: 1} )
				board = Board.new([guess1, guess2], [peg1, peg2])
				expect(Breaker.new("Alexis").is_possible?(["1", "3", "2", "4"], board)).to be_falsey
			end
		end
	end
end