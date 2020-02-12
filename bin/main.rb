require_relative '../interface'
require_relative '../lib/game_logic'

prompt = '>'
answer = gets.chomp

while !/^y(es){0,1}$/i.match(answer) || !/^no{0,1}$/i.match(answer)
   if /^y(es){0,1}$/i.match(answer)
     prompt = '> '
     puts "\nPlayer 1 choose your name: "
     print prompt
     player1 = Player.new(gets.chomp.upcase)
 
     puts "\nNow, Player 2 choose your name: "
     print prompt
     player2 = Player.new(gets.chomp.upcase)
 
     game = Game.new(player1, player2, answer)

     puts "\nWelcome players!"
     puts "\n#{player1.name} you'll play as the '#{player1.mark}' and
     #{player2.name} you'll play as the '#{player2.mark}'."

     puts "\nThis is the board\n"

     board = Board.new






     def print_board(game_board)
        game_board.each_with_index do |_x, y|
          separator = [1, 2, 4, 5, 7, 8]
          print "  #{game_board[y]} "
          print '|' if separator.include?(y + 1)
          print "\n" if ((y + 1).to_i % 3).zero?
        end
     end
     print_board(board.availible_spaces)

     def check(game_board, console)
        if game_board.win_validation(console.active_player.choices)
           puts "Congratulations #{console.active_player.name}, you're a winner"
        elsif game_board.draw_validation
           puts "It's a draw"
        end
     end
     until game.result
     puts "\n#{game.active_player.name} pick a number to put your game piece"
     pick = gets.chomp.to_i
     board.space_selection(pick, game.active_player.mark, game.active_player.choices)
     print_board(board.availible_spaces)
     check(board, game)
     break if board.win_validation(game.active_player.choices) || board.draw_validation

     game.switch_players
     end

     break

   elsif /^no{0,1}$/i.match(answer)

     puts 'Goodbye...'
     break

   else

     puts "\nDidn't get you. You said you wanna play: Yes or No?"
     print prompt
     answer = gets.chomp

   end
end
