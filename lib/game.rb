# Create Game

class Game
  attr_reader :player1, :player2, :answer, :active_player, :result

  def initialize(player1, player2, answer)
    @player1 = player1
    @player2 = player2
    @answer = answer
    @active_player = @player1
    @result = false
  end

  def switch_players
    @active_player = @active_player == @player1 ? @player2 : @player1
  end
end
