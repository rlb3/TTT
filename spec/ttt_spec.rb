require 'spec_helper'

describe TTT::Board::Cell do
  let(:cell) { TTT::Board::Cell.new(position: 1) }

  class TestPlayer
    def move
      'X'
    end
  end

  it 'should not be nil' do
    cell.should_not be_nil
  end

  it 'should have default content' do
    cell.content.should == '.'
  end

  it 'should take a players update' do
    cell.players_move(TestPlayer.new)
    cell.content.should == 'X'
  end
end
