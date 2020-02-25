spangle = '*' * 50
title_page = <<-EOS % {spangle: spangle}
 %<spangle>s
            ---- Tic Tac TRONIX 2000 ----

          An strategy game for two players.

               Creative Commons 2020
 %<spangle>s
EOS

blurb = <<eos
  Tic Tac TRONIX 2000 is based on the classic Tic
  Tac Toe game.
eos

instructions = <<eos
  INSTRUCTIONS: to play select "Y", you'll be
  asked to introduce the name of both Players. Once
  set up, players will take turns to leave their
  marks (X's or O's) on the board. The player who
  first has 3 marks in a row wins the game.
eos

rules = <<-eos
                       __RULES__
  1. The game is played on a grid that's 3x3 squares.
  2. Player One is X's and Player Two is 0's.
  3. X always starts the game.
  4. Players take turns putting their marks in
     unselected squares.
  5. The first player to get 3 marks in a row (up,
     down, across, or diagonally) is the winner.
  6. When all 9 squares are full, the game is over.
     If no player has 3 marks in a row, the game ends
     in a tie.
  eos

puts title_page
puts
puts blurb
puts
puts instructions
puts
puts rules
puts
print 'Do you wanna play? Y/n: '

