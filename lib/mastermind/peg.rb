module Mastermind
	class Peg
		attr_reader :blacks, :whites
		def initialize(blacks, whites)
			@blacks = blacks
			@whites = whites	
		end
	end
end