# Create the players
class Player
  attr_reader :name, :mark, :choices
  $count = 0
  def initialize(name)
    @name = name
    @mark = mark
    $count += 1
  end

  def mark_assignation
    if $count == 1
      @mark = '+'
    elsif $count == 2
      @mark = '-'
    else
      puts 'Only two players can play the game. Try again.'
    end
  end
end

class Board

  def init_board
    @board_size = 3
    @board = ""
    (@board_size**2).times { |x| @board[x] = (x + 1).to_s }
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

  def space_selection(choice, mark)
    if @board.include?(choice) && choice != '+' || "-"
      @board.gsub!(choice, mark)
      puts @board
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

def play(play)
  if /^y(es){0,1}$/i =~ play

    prompt = '> '
    puts "\nPlayer 1 choose your name: "
    print prompt
    name = gets.chomp

    player1 = Player.new(name)
    player1.mark_assignation

    puts "\nPlayer 2 choose your name: "
    print prompt
    name =gets.chomp

    player2 = Player.new(name)
    player2.mark_assignation

    puts "\nWelcome #{player1.name} you are #{player1.mark} and #{player2.name} your are #{player2.mark}."

    puts "This is the board"
    game_on = Board.new
    game_on.init_board

    puts "\n#{player1.name} you start, please pick a numnber of the board to leave your mark"
    print prompt
    pick = gets.chomp
    game_on.space_selection(pick, player1.mark)
    puts "\n#{player2.name} you start, please pick a numnber of the board to leave your mark"
    print prompt
    pick = gets.chomp
    game_on.space_selection(pick, player2.mark)


  elsif /^no{0,1}$/i =~ play
    puts "Goodbye..."
  else
    puts"\nDidn't get you. You said you wanna play: Yes or No?"
    print prompt
    answer = gets.chomp
    play(answer)
  end
end