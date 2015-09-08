module Mastermind
	class Peg
		attr_reader :black, :white
		def initialize(values) #To be called like: Peg.new({black: 1, white: 3})
			@black = values.fetch(:black)
			@white = values.fetch(:white)
		end
	end
end