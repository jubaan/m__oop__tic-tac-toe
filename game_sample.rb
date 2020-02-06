require 'pry'
# require_relative 'test'

# puts "\n" + '*' * 50
# puts "\n          ---- Tic Tac TRONIX 2000 ----"
# puts "\n        An strategy game for two players."
# puts "\n             Creative Commons 2020"
# puts "\n" + '*' * 50
# puts "\n Tic Tac TRONIX 2000 is based on the classic Tic
#  Tac Toe game."

# puts "\n INSTRUCTIONS: to play select \"Y\", you'll be
#  asked to introduce the name of both Players. Once
#  set up, players will take turns to leave their
#  marks (X's or O's) on the board. The player who
#  first has 3 marks in a row wins the game."

# puts %Q(\n                   __RULES__
# \n1. The game is played on a grid that's 3x3 squares.
# 2. Player One is X's and Player Two is 0's.
# 3. X always starts the game.
# 4. Players take turns putting their marks in unselected
#    squares.
# 5. The first player to get 3 marks in a row (up,
#    down, across, or diagonally) is the winner.
# 6. When all 9 squares are full, the game is over.
#    If no player has 3 marks in a row, the game ends
#    in a tie.)

# promt = '> '
# puts "\nPlayer 1 choose your name"
# print promt
# name = gets.chomp

# player1 = Player.new(name, 'X')

# puts player1.name
# puts player1.piece

# board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# choices = []
# print board
# puts 'Your turn, choose a number: '
# mark = gets.chomp

# board[mark-1] = 'X' and choices << mark.to_i if board.include?(mark)

# print board, choices

# start = 'yes'
# def play(start)
#   if /^(y|Y)(es){1}*$/ === start
#     puts 'hello'
#   else
#     puts 'didnt work'
#   end
# end
# play(start)


class Player
  attr_reader :name, :mark
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

player1 = Player.new('Julio')
player1.mark_assignation
puts player1.name
puts player1.mark
puts $count

player2 = Player.new('Carlos')
player2.mark_assignation

puts player2.name
puts player2.mark
puts $count

player3 = Player.new('Didymus')
player3.mark_assignation

puts player3.name
puts player3.mark
puts $count


win
this is when a players win the game

draw
this is when neither of the players win

players
there should be 2 player for the game to work

board
the game board to play the game


player
board
game
mark
turn
win
draw
boar

[
  [1,2,3]
  [4,5,6]
  [7,8,9]
]

board = []

(board_size**2).times { |x|
  board[x] = x + 1
}

board[0] | board[1] | board[2]
board[3] | board[4] | board[5]
board[6] | board[7]  |board[8]


# [1,2,3,4,5,6,7,8,9]

board_size = 3
board = "123456789"
player1 = ""


# winning_list = %w(123 456 789 147 258 369 159 357)


# wining.all? {|x| player_choices.include?(x)}

x = '1'
player1 << x
board.gsub!(x, 'X')
puts player1, board

# class turn
#   board = "123456789"
#   def track_choices(choice)
#     choices
#   end
# end

# class Players
#   def initialize
# end

Player
#   name
#   marks
# Board
#   spaces
#   record of
# Game
#   play
#   rounds
#   score (winner or draw)

#   class Player
#     attr_reader :name, :piece
#     def initialize(name, piece)
#       @name = name
#       @piece = piece
#     end
#   end

# class Board
#   squares = [
#     [1, 2, 3]
#     [4, 5, 6]
#     [7, 8, 9]
#   ]

#   def initalize(grid)
#     @grid = grid
#   end

#   def display_board

#   end

# end

# class Game

#   def initialize(map, players)

#   end
#   def next_turn

#   end

#   def play

#   end
# end




# c = {1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9