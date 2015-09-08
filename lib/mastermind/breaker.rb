module Mastermind
	class Breaker < Player
		def generate_guess
			puts "Guess: please enter 4 letters in 1, 2, 3, 4, 5, 6 seperated by spaces"
			code = gets.chomp.split(" ")
			Guess.new(code)
		end

		def generate_guess_ai(board)
			if board.pegs_list.empty?
				Guess.new(["1", "1", "2", "2"])
			else
				list_possibilities = generate_all_combinations
				filtered_possibilities = filter_combinations(list_possibilities, board)
				Guess.new(filtered_possibilities[0])
			end
		end

		def generate_all_combinations
			a = ["1", "2", "3", "4", "5", "6"]
			a.repeated_permutation(4).to_a
		end

		def filter_combinations(possibilities, board)
			filtered_possibilities = []
			possibilities.each do |code|
				filtered_possibilities << code if is_possible?(code, board)
			end
			filtered_possibilities
		end

		def is_possible?(code, input_board)
			input_board.guesses.each_with_index do |guess, index|
				board = Board.new([guess])
				board.set_code(code)
				peg = Coder.new("Bot").generate_peg(board)
				next if input_board.pegs_list[index].black == peg.black && input_board.pegs_list[index].white == peg.white
				return false
			end
			true
		end
	end
end