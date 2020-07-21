require './players'
require './questions'
require './turns'

player1 = Players.new
player2 = Players.new

game = Turns.new
Turns.start