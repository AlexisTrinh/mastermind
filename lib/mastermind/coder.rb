module Mastermind
	class Coder < Player
		def generate_code
			puts "please enter 4 letters in r, b, g, y, o, p seperated by spaces"
			code = gets.chomp.split(" ")
		end

		def generate_peg(board)
			guess = board.last_guess.value
			code = board.code
			blacks = 0
			whites = 0
			non_exact_guess = []
			non_exact_code = []
			guess.each_with_index do |element, i|
				if element == code[i]
					blacks += 1
				else
					non_exact_guess << element
					non_exact_code << code[i]
				end
			end
			non_exact_code_freq = Hash.new(0)
			non_exact_code.each { |element| non_exact_code_freq[element] += 1 }
			non_exact_guess_freq = Hash.new(0)
			non_exact_guess.each { |element| non_exact_guess_freq[element] += 1 }
			non_exact_guess_freq.each do |key, value|
				whites += [non_exact_guess_freq[key], non_exact_code_freq[key]].min
			end
			
			return Peg.new({:black => blacks, :white => whites})

		end
		
	end

end