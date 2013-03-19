require_relative '../../spec_helper'

describe TTT::Board::Cell do
  let(:cell) { TTT::Board::Cell.new(position: 1) }

  it 'should not be nil' do
    cell.should_not be_nil
  end

  it 'should have default content' do
    cell.content.should == '.'
  end

  context 'when player makes a move' do

    class TestPlayer
      def move
        'X'
      end
    end

    let(:player) { TestPlayer.new }

    it 'should mirror that move' do
      cell.players_move(player)
      cell.content.should == player.move
    end
  end
end
