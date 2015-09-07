module Mastermind
	class Guess
		attr_reader :value
		def initialize(value) #should be Array of size 4
			@value = value
		end
	end
end