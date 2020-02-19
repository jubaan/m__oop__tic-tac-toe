require '../lib/game_logic'

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

  end

  context 'Game' do
    
  end

end