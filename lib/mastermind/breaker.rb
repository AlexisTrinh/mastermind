module Mastermind
	class Breaker < Player
		def generate_guess
			puts "Guess: please enter 4 letters in r, b, g, y, o, p seperated by spaces"
			code = gets.chomp.split(" ")
			Guess.new(code)
		end
	end
end