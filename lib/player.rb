# Create players

class Player
  attr_reader :name, :mark, :pick, :choices

  @@count = 0

  def initialize(name)
    @name = name
    @mark = @@count.zero? ? 'X' : 'O'
    @pick = pick
    @choices = []
    @@count += 1
  end
end
