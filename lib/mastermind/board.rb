module Mastermind
	class Board
		attr_accessor :guesses, :pegs_list, :code
		def initialize(guesses = [], pegs_list = [])
			@guesses = guesses
			@pegs_list = pegs_list
			@code = []
		end

		def set_code(init_code)
			@code = init_code
		end

		def game_over
			return :breaker_wins if code == last_guess.value
			return :coder_wins if guesses.size > 11
			false
		end

		def game_over_message(coder, breaker)
			puts "#{breaker} broke the code!" if game_over == :breaker_wins
			puts "#{coder}, the coder wins!" if game_over == :coder_wins
		end

		def add_guess(guess)
			@guesses << guess
		end

		def last_guess
			guesses.last
		end

		def add_peg(peg)
			@pegs_list << peg
		end

		def display
			guesses.each_with_index do |guess, index|
				p guess.value
				puts " Blacks: #{pegs_list[index].black}"
				puts " Whites: #{pegs_list[index].white}"
			end 
		end

	end
end