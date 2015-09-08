module Mastermind
	class Game
		attr_reader :players, :coder, :breaker, :board
		
		# players = {breaker: player1, coder: player2}
		# Game.new(players, board)
		def initialize(players, board = Board.new) 
			@coder = players.fetch(:coder)
			@breaker = players.fetch(:breaker)
			@board = board
		end

		def play
			init_code = coder.generate_code
			board.set_code(init_code)
			while true
				board.display
				new_guess = breaker.generate_guess
				board.add_guess(new_guess)
				if board.game_over
					board.game_over_message(coder.name, breaker.name)
					break
				end
				new_peg = coder.generate_peg(board)
				board.add_peg(new_peg)
			end
		end



	end
end