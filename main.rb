require './game'
require './player'
require './question'


class PlayGame

puts "Welcome to the Math Game!"
puts "Objective: "
puts "Two players take turns answering math addition problems"
puts "Each player gets 3 lives. For every wrong answer"
puts "a life is lost. First player to lose all their lives loses the game."

players = []

puts "Enter first player's name: "
name1 = gets.chomp
player1 = Player.new(name1)
players << player1

puts "Enter second player's name: "
name2 = gets.chomp
player2 = Player.new(name2)
players << player2

new_game = Game.new
loser = new_game.game_loop(players, new_game)

players.delete_if { |player| player.name == loser}

puts "#{players[0].name.upcase} IS THE WINNER!! #{loser.upcase} IS OUT OF LIVES!!"

end

