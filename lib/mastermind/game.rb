module Mastermind
	class Game
		attr_reader :players, :coder, :breaker
		def initialize(players, board)
			@coder = players.fetch(:coder)
			@breaker = players.fetch(:breaker)
			@board = board
		end

		def play
			
		end

	end
end