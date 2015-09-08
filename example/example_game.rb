require_relative "../lib/mastermind.rb"

puts "Welcome to Mastermind. Do you want to 'break' a code, or 'make' a code?"

choice = gets.chomp

if choice == "break"
	player1 = Mastermind::Breaker.new("Alexis")
	player2 = Mastermind::Coder.new("AI")
	players = {breaker: player1, coder: player2}
	Mastermind::Game.new(players).play
elsif choice == "make"
	player1 = Mastermind::Breaker.new("AI")
	player2 = Mastermind::Coder.new("Alexis")
	players = {breaker: player1, coder: player2}
	Mastermind::Game.new(players).play(:ai => true)
else
	puts "You don't get to play, stupid"
end