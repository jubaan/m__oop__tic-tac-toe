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

print "\n Do you want to play? Y/n: "
# option = gets.chomp

puts "\n Player 1, choose your name: "
print ' > '
# player1 = Player.new(gets.chomp.upcase)

puts "\n Player 2, choose your name: "
print ' > '
# player2 = Player.new(gets.chomp.upcase)

puts "\n Welcome palyer1.name and player2.name the game is about to start."

puts "\n Remember the player who gets FIRST 3 marks in a row wins."

puts "\n This is the board, you'll have to choose one space
 at a time by selecting the number of the square."

board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
game_on = true
while game_on 
puts "
\t     |     |
\t  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}
\t     |     |
"
print "\n\a player1.name your turn, choose number: "
if player1.name choice is a cell on the board
    replace the cell space with player1.name game piece
else 
    puts "pick a number on the board"
end
# mark = gets.chomp

puts "
\t     |     |
\t  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}
\t     |     |
"
print "\n\a player2.name your turn, choose number: "
# mark = gets.chomp

puts "
\t     |     |
\t  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}
\t     |     |
"
print "\n\a player1.name your turn, choose number: "
# mark = gets.chomp

puts "
\t     |     |
\t  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}
\t_____|_____|_____
\t     |     |
\t  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}
\t     |     |
"
print "\n\a player2.name your turn, choose number: "
# mark = gets.chomp

if 'game board cell is filled'
  puts winner if 3 + ' game pieces are crossed'
  puts loser + ' you lose'
  puts draw if 'no crosses on the board'
end
break unless game_on
end

puts "\n" + '*' * 50
puts "\n                    END SCORE"
puts "\n          player1.name 1 | 0 player2.name"
puts "\n" + '*' * 50
puts "\n CONGRATULATIONS >>> player1.name <<< YOU WON!!!!"
puts "\n" + '*' * 50
print "\n Do you want a to play again Y/n: "
# option = gets.chomp
