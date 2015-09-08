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

		def play(opts = {:ai => false})
			init_code = coder.generate_code unless opts[:ai]
			init_code = coder.manual_code if opts[:ai]
			board.set_code(init_code)
			turn = 1
			while true
				puts "\n\nTurn: #{turn}\n\n"
				board.display
				new_guess = breaker.generate_guess unless opts[:ai]
				new_guess = breaker.generate_guess_ai(board) if opts[:ai]
				puts "\nNew guess: #{new_guess.value}\n"
				board.add_guess(new_guess)
				if board.game_over
					board.game_over_message(coder.name, breaker.name)
					break
				end
				new_peg = coder.generate_peg(board)
				board.add_peg(new_peg)
				turn += 1
			end
		end
	end
end