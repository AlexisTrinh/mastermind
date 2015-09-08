require "spec_helper"

module Mastermind
	describe Coder do
		context "#generate_peg" do
			it "returns the right value for pegs case 1" do
				board = Board.new
				board.set_code(["1","1","2","3"])
				new_guess = Guess.new(["1","3","2","1"])
				board.add_guess(new_guess)
				coder = Coder.new("Alexis")
				expect(coder.generate_peg(board).black).to eq 2
				expect(coder.generate_peg(board).white).to eq 2				
			end

				it "returns the right value for pegs case 2" do
				board = Board.new
				board.set_code(["1","1","2","3"])
				new_guess = Guess.new(["1","1","2","3"])
				board.add_guess(new_guess)
				coder = Coder.new("Alexis")
				expect(coder.generate_peg(board).black).to eq 4
				expect(coder.generate_peg(board).white).to eq 0				
			end

				it "returns the right value for pegs case 3" do
				board = Board.new
				board.set_code(["1","1","2","3"])
				new_guess = Guess.new(["2","3","1","1"])
				board.add_guess(new_guess)
				coder = Coder.new("Alexis")
				expect(coder.generate_peg(board).black).to eq 0
				expect(coder.generate_peg(board).white).to eq 4					
			end

				it "returns the right value for pegs case 4" do
				board = Board.new
				board.set_code(["1","1","2","4"])
				new_guess = Guess.new(["1","3","2","1"])
				board.add_guess(new_guess)
				coder = Coder.new("Alexis")
				expect(coder.generate_peg(board).black).to eq 2
				expect(coder.generate_peg(board).white).to eq 1					
			end

				it "returns the right value for pegs case 5" do
				board = Board.new
				board.set_code(["1","1","2","3"])
				new_guess = Guess.new(["7","8","9","10"])
				board.add_guess(new_guess)
				coder = Coder.new("Alexis")
				expect(coder.generate_peg(board).black).to eq 0
				expect(coder.generate_peg(board).white).to eq 0					
			end
		end
	end
end