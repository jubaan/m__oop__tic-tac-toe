# Player
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