require_relative './game-logic-test'

puts "\n" + '*' * 50
puts "\n          ---- Tic Tac TRONIX 2000 ----"
puts "\n        An strategy game for two players."
puts "\n             Creative Commons 2020"
puts "\n" + '*' * 50
puts "\n Tic Tac TRONIX 2000 is based on the classic Tic
 Tac Toe game."

puts "\n INSTRUCTIONS: to play select \"Y\", you'll be
 asked to introduce the name of both Players. Once
 set up, players will take turns to leave their
 marks (X's or O's) on the board. The player who
 first has 3 marks in a row wins the game."

puts "\n                   __RULES__
\n1. The game is played on a grid that's 3x3 squares.
2. Player One is X's and Player Two is 0's.
3. X always starts the game.
4. Players take turns putting their marks in unselected
   squares.
5. The first player to get 3 marks in a row (up,
   down, across, or diagonally) is the winner.
6. When all 9 squares are full, the game is over.
   If no player has 3 marks in a row, the game ends
   in a tie."

prompt = '> '

print "\nDo you wanna play? Y/n: "
answer = gets.chomp
$_ = answer

while !/^y(es){0,1}$/i || !/^no{0,1}$/i
  if /^y(es){0,1}$/i
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

    board.availible_spaces.each { |x|
      separator = [1, 2, 4, 5, 7, 8]
      print "#{x < 10 ? "  #{board.availible_spaces[x - 1]} " : " #{board.availible_spaces[x - 1]} "}"
      print "|" if separator.include?(x)
      print "\n" if (x % 3).zero?
    }

    break if answer = 'y'

  elsif /^no{0,1}$/i

    puts 'Goodbye...'
    break if answer = 'n'

  else

    puts "\nDidn't get you. You said you wanna play: Yes or No?"
    print prompt
    answer = gets.chomp

  end
end
