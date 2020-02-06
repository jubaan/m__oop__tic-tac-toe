class Player
  attr_reader :name, :mark, :space_taken
  $count = 0
  def initialize(name)
    @name = name
    @mark = mark
    $count += 1
  end


  def mark_assignation
    if $count == 1
      @mark = 'X'
    elsif $count == 2
      @mark = 'O'
    else
      puts 'Only two players can play the game. Try again.'
    end
  end

  $count
end

class Board
  def initialize; end

  def init_board
    @board_size = 3
    @board = []
    (@board_size**2).times { |x| @board[x] = x + 1 }
    puts "
           |     |
        #{@board[0]}  |  #{@board[1]}  |  #{@board[2]}
      _____|_____|_____
           |     |
        #{@board[3]}  |  #{@board[4]}  |  #{@board[5]}
      _____|_____|_____
           |     |
        #{@board[6]}  |  #{@board[7]}  |  #{@board[8]}
           |     |
    "
  end
end

def play(play)
  if /^[Yy]((ES|es){1})*$/ =~ play
    puts "\nPlayer 1 choose your name: "
    print '> '
    name = gets.chomp
    player1 = Player.new(name)
    player1.mark_assignation
    puts "\nPlayer 2 choose your name: "
    print '> '
    name =gets.chomp
    player2 = Player.new(name)
    player2.mark_assignation

    puts "Welcome #{player1.name} you are #{player1.mark} and #{player2.name} your are #{player2.mark}."

    puts "This is the board"
    game_on = Board.new
    game_on.init_board

  elsif /^[Nn]([Oo]{1})*$/ === play
    puts "Goodbye..."
  else
    puts 'Write a valid answer. Yes or No.'
    print "\nDo you wanna play? Y/n: "
    answer = gets.chomp
    play(answer)
  end
end

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

print "\nDo you wanna play? Y/n: "
answer = gets.chomp
play(answer)
