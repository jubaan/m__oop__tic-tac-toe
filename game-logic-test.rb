class Player
  attr_reader :name, :mark, :pick, :choices

  @@count = 0

  def initialize(name)
    @name = name
    @mark = @@count.zero? ? '+' : '-'
    @pick = pick
    @choices = []
    @@count += 1
  end
end

class Board
  attr_reader :board_size, :availible_spaces, :win, :draw
  def initialize
    @board_size = 3
    @availible_spaces = []
    (@board_size**2).times do |x|
      x += 1
      @availible_spaces << x
    end
  end

  def space_selection(pick, mark, choices)
    if @availible_spaces.include?(pick) && pick != ~ /(\+ || |-)+/i
      @availible_spaces[pick - 1] = mark
      (@board_size**2).times do |x|
        x += 1
      end
    else
      puts 'Please select a valid option'
      print '> '
      choice = gets.chomp.to_i
      choices << choice
      space_selection(choice, mark, choices)
    end
  end

  def win_validation(player_pick)
    winning_list = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    winning_list.any? { |combination| combination.all? { |x| player_pick.include?(x) } }
  end

  def draw_validation
    @availible_spaces.all? { |x| @draw = true if x.class == String }
  end
end

class Game
  attr_reader :player1, :player2, :answer, :active_player

  def initialize(player1, player2, answer)
    @player1 = player1
    @player2 = player2
    @answer = answer
    @active_player = @player1
  end

  def play
    prompt = '> '
    if /^y(es){0,1}$/i =~ answer
      player_validation

      # puts "\nWelcome players!,
      # #{@p1.name.upcase} you'll play as the '#{@p1.mark}'
      # and #{@p2.name.upcase} you'll play as the '#{@p2.mark}'."

      # puts "\nThis is the board"

      turns(@active_player)

    elsif /^no{0,1}$/i =~ answer
      # puts 'Goodbye...'
    else
      # puts "\nDidn't get you. You said you wanna play: Yes or No?"
      # print prompt
      # answer = gets.chomp
      # play(answer)
    end
  end

  def switch_players
    @active_player = @active_player == @player1 ? @player2 : @player1
  end

  # def player_validation
    # prompt = '> '
    # puts "\nPlayer 1 choose your name: "
    # print prompt
    # name = gets.chomp

    # @p1 = Player.new(name)

    # puts "\nNow, Player 2 choose your name: "
    # print prompt
    # name = gets.chomp

    # @p2 = Player.new(name)

    # @active_player = @p1
  # end

  def turns()
    game_on = Board.new
    result = false

    loop do
      puts "\n#{@active_player.name} pick a number to put your game piece"
      pick = gets.chomp.to_i
      game_on.space_selection(pick, @active_player.mark, @active_player.choices)
      @active_player.choices << pick
      print @active_player.choices

      if game_on.win_validation(@active_player.choices)
        puts "Congratulations #{@active_player.name}, you're a winner"
        result = true
      elsif game_on.draw_validation
        puts "It's a draw"
        result = true
      end

      switch_players
      break if result == true
    end
  end
end