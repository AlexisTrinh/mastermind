require_relative "../lib/mastermind.rb"

puts "Welcome to Mastermind."

player1 = Mastermind::Breaker.new("Alexis")
player2 = Mastermind::Coder.new("AI")

players = {breaker: player1, coder: player2}

Mastermind::Game.new(players).play