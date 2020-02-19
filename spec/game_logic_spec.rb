require './lib/game_logic'

class Board
  def initialize(availible_spaces)
    @availible_spaces = availible_spaces
  end
end

RSpec.describe 'testing game logic' do

  context 'Player' do

    it 'retrieve player1 name and mark' do
      player1 = Player.new('player1')
      expect(player1.name).to eql('player1')
      expect(player1.mark).to eql('+')
    end

    it 'retrieve player2 name and mark' do
      player2 = Player.new('player2')
      expect(player2.mark).to eql('-')
    end
  end

  context 'Board' do
    describe '#space_selection' do
      it 'returns a new board with a changed position' do
        board = Board.new

        expect(board.space_selection(4, '+', [])).to eq([4])
      end
    end

    describe '#win_validation' do
      it 'returns true if array matches combination' do
        board = Board.new

        expect(board.win_validation([4, 7, 1, 8, 9])).to eq(true)
      end

      it 'returns false if array does not match combination' do
        board = Board.new

        expect(board.win_validation([3, 4, 1, 8, 9])).to eq(false)
      end
    end

    describe '#draw_validation' do
      it 'returns false if all array elements are not strings' do
        board = Board.new

        expect(board.draw_validation).to eq(false)
      end

      it 'returns true if all array elements are strings' do
        board = Board.new(["+", "-", "-", "+", "+", "-", "+", "+", "+",])

        expect(board.draw_validation).to eq(true)
      end
    end

  end

  context 'Game' do
    
  end

end