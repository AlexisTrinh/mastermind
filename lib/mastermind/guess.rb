module Mastermind
	class Guess
		attr_reader :value
		def initialize(value) #should be Array of size 4 e.g. ["r","g","b","h"]
			@value = value
		end
	end
end