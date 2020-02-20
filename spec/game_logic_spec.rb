require './lib/game_logic'

RSpec.describe 'testing game logic' do
  describe Player do
    context 'Player' do
      it 'returns player1 mark' do
        player1 = Player.new('player1')
        expect(player1.mark).to eql('+')
        expect(player1.mark).not_to eql('-')
      end
  
      it 'returns player2 mark' do
        player2 = Player.new('player2')
        expect(player2.mark).to eql('-')
        expect(player2.mark).not_to eql('+')
      end
    end
  end

  describe '#space_selection' do
    let(:board) { Board.new }
    context 'Board' do
      it 'returns a new board with a changed position' do
        expect(board.space_selection(4, '+', [])).to eq([4])
      end
    end

    describe '#win_validation' do
      it 'returns true if array matches combination' do
        expect(board.win_validation([4, 7, 1, 8, 9])).to eq(true)
      end

      it 'returns false if array does not match combination' do
        expect(board.win_validation([3, 4, 1, 8, 9])).to eq(false)
      end
    end

    describe '#draw_validation' do
      it 'returns false if all array elements are not strings' do
        expect(board.draw_validation).to eq(false)
      end

      it 'returns true if all array elements are strings' do
        class Board
          def initialize(availible_spaces)
            @availible_spaces = availible_spaces
          end
        end
        board = Board.new(%w[- + - + - + - + -])

        expect(board.draw_validation).to eq(true)
      end
    end
  end

  describe Game do
    context 'Game' do
      it '#switch_players' do
        game = Game.new('player1', 'player2', 'yes')
        expect(game.switch_players).to eql('player2')
      end
    end
  end
end
