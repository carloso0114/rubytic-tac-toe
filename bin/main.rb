#!/usr/bin/env ruby

#require the files that contains classes and methods
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

p1 = Player.new('', 'X')
p2 = Player.new('', 'O')
new_game = Game.new
new_game.reset_board
game_ended = false
turn = true
positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def gap
  2.times { puts '' }
end

def valid_name?(name)
  return true unless name.empty?

  false
end

def prompt_user(new_player, code)
  loop do
    print "Player #{code} enter your name: "
    new_player.name = gets.chomp.strip
    if valid_name?(new_player.name)
      puts "#{new_player.name} your symbol is #{new_player.symbol}"
      break
    else
      puts 'Invalid name, try again'
    end
  end
end

def print_board(new_game)
  puts "                 _________________
                |     |     |     |
                |  #{new_game.board[0][0]}  |  #{new_game.board[0][1]}  |  #{new_game.board[0][2]}  |
                |_____|_____|_____|
                |     |     |     |
                |  #{new_game.board[1][0]}  |  #{new_game.board[1][1]}  |  #{new_game.board[1][2]}  |
                |_____|_____|_____|
                |     |     |     |
                |  #{new_game.board[2][0]}  |  #{new_game.board[2][1]}  |  #{new_game.board[2][2]}  |
                |_____|_____|_____|"
end

gap
print '      TIC TAC TOE'
gap
prompt_user(p1, 1)
gap
prompt_user(p2, 2)
gap
puts "     ===============LET'S PLAY!==============="
gap
print_board(new_game)
gap
until game_ended
  symbol = turn ? 'X' : 'O'
  if turn
    print "#{p1.name} select a move from the list of available moves #{positions}: "
    current_player = p1.name
  else
    print "#{p2.name} select a move from the list of available moves #{positions}: "
    current_player = p2.name
  end

  loop do
    position = gets.chomp
    if new_game.choice_valid?(position)
      spot = new_game.get_spot(position)
    else
      print "#{current_player} Invalid move, try another one from the list of available moves #{positions}: "
      next
    end
    if new_game.spot_valid?(spot)
      new_game.update_board(spot, symbol)
      positions.delete(position.to_i)
      puts 'Move is valid, below is your move on the board.'
      break
    else
      print "#{current_player} That spot is already taken!, pick one from the list of available moves #{positions}: "
    end
  end
print_board(new_game)
puts ''
if new_game.win? && symbol == 'X'
  puts "Congratz #{current_player}! You're the Winner :)"
  gap
  game_ended = true
elsif new_game.win? && symbol == 'O'
  puts "Congratz #{current_player}! You're the Winner :)"
  gap
  game_ended = true
elsif new_game.draw?
  puts "#{p1.name} and #{p2.name} , it's a draw!"
  gap
  game_ended = true
else
  turn = !turn
end

next unless game_ended

print "Do you want to continue playing? , enter 'Y' to continue or any key to exit :  "
response = gets.chomp.downcase
game_ended = response != 'y'
gap
if game_ended
  puts 'Thanks for playing, goodbye!'
  gap
else
  new_game.reset_board
  positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts '======== Welcome to your new game ========'
  print_board(new_game)
  puts ''
end

# end of game_ended
end