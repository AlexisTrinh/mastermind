module Mastermind
	class Board
		attr_reader :guesses, :pegs_list, :code
		def initialize(code, guesses = [], pegs_list = [])
			@code = code
			@guesses = guesses
			@pegs_list = pegs_list
		end

	end
end