# !/usr/bin/env ruby
puts ''
print '                 TIC TAC TOE'
puts '
               _________________
              |     |     |     |
              |  1  |  2  |  3  |
              |_____|_____|_____|
              |     |     |     |
              |  4  |  5  |  6  |
              |_____|_____|_____|
              |     |     |     |
              |  7  |  8  |  9  |
              |_____|_____|_____|
'
puts ''
puts 'Player 1 enter your name:'
player_one = gets.chomp
puts "#{player_one} your symbol is 'X'"
puts ''
puts 'Player 2 enter your name:'
player_two = gets.chomp
puts "#{player_two} your symbol is 'O'"
puts ''
puts "            ===============LET'S PLAY!==============="
puts "#{player_one} make your move"
puts 'Select a position from [1, 2, 3, 4, 5, 6, 7, 8, 9]'
position=gets.chomp
puts "#{player_one} the move you made is invalid, please try again!"
position=gets.chomp
puts '
_________________
|     |     |     |
|  1  |  2  |  3  |
|_____|_____|_____|
|     |     |     |
|  4  |  5  |  6  |
|_____|_____|_____|
|     |     |     |
|  7  |  8  |  9  |
|_____|_____|_____|
'
puts ''
puts "Congs #{player_one}, you are the winner!"
puts ''
puts "It's a draw, you can play again!"
puts ''
# current_player(player_two)
    puts "#{player_two} make your move"
    puts 'Select a position from [1, 2, 3, 4, 5, 6, 7, 8, 9]'
    position=gets.chomp
    puts ''
    puts "#{player_two} the move you made is invalid, please try again!"
    position=gets.chomp
    puts '
               _________________
              |     |     |     |
              |  1  |  2  |  3  |
              |_____|_____|_____|
              |     |     |     |
              |  4  |  5  |  6  |
              |_____|_____|_____|
              |     |     |     |
              |  7  |  8  |  9  |
              |_____|_____|_____|
'
    puts ''
    puts "Congs #{player_two}, you are the winner!"
    puts ''
    puts "It's a draw, you can play again!"
    puts ''
