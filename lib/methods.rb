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