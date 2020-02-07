class Game
  def initialize
    @player1 = Player.new(gets.chomp)
    @player1.select_piece
    @player2 = Player.new(gets.chomp)
    @player2.select_piece

    @active_player = @player1
    @board = Board.new(3)
    puts @active_player.name
  end

  def switch
    if @active_player == @player1
      @active_player = @player2
    else
      @active_player = @player1
    end
  end

  def win_validation(player_pick)
    @win = false
    @winning_list = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    @winning_list.any? { |combination|
      @win = true if  combination.all? { |x| player_pick.include?(x) } }
    @win
  end

  def play(play)
    if /^y(es){0,1}$/i =~ play  
      puts "\nWelcome #{@player1.name} you are #{@player1.mark} and #{@player2.name} your are #{@player2.mark}."
  
      puts "This is the board"
      board = Board.new
      board.init_board
  
      # puts "\n#{player1.name} you start, please pick a numnber of the board to leave your mark"
      # print prompt
      # pick = gets.chomp
      # game_on.space_selection(pick, player1.mark)
      # puts "\n#{player2.name} you start, please pick a numnber of the board to leave your mark"
      # print prompt
      # pick = gets.chomp
      # game_on.space_selection(pick, player2.mark)
  
      winner = false
      player_pick = []
      loop do
        puts "#{@active_player.name}, pick a number to put your mark"
        pick = gets.chomp.to_i
        player_pick << pick
        @board.confirm_position(pick, @active_player.mark)
        # @board.space_selection(pick, active_player.mark)
        winner = win_validation(player_pick)
        break if winner == true
        switch
      end
      if winner == true
        puts "You're a winner"
      end
      puts winner
  
  
    elsif /^no{0,1}$/i =~ play
      puts "Goodbye..."
    else
      puts"\nDidn't get you. You said you wanna play: Yes or No?"
      print prompt
      answer = gets.chomp
      play(answer)
    end
  end

end

class Player
  attr_reader :name, :mark
  $count = 0
  def initialize(name)
    @name = name
    @mark = mark
    @choices = []
    $count += 1
  end

  def select_piece
    if $count == 1
      @mark = 'X'
    elsif $count == 2
      @mark = 'O'
    else
      puts 'Only two players can play the game. Try again.'
    end
  end
end

class Board

  def init_board
    @board_size = 3
    @board = []
    (@board_size**2).times { |x| @board[x] = (x + 1) }
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

  def confirm_position(choice, mark)
    check = false
    if @board[choice - 1] == choice && @board[choice - 1] != 'X' || 'O'
      check = true
      puts 'Position is valid, I am placing the game piece there now'
      @count += 1
      space_selection(choice, mark)
    else
      puts 'Please select a valid option'
      print '> '
      choice = gets.chomp
      space_selection(choice, mark)
    end
  end

  def space_selection(choice, mark)
    if @board.include?(choice) && choice != /(\+ || \-)+/
      @board[choice-1] = mark
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
    else
      puts 'Please select a valid option'
      print '> '
      choice = gets.chomp
      space_selection(choice, mark)
    end
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
game_on = Game.new
game_on.play(answer)


