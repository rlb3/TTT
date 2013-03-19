require_relative '../spec_helper'

describe TTT::Board do

  module FakeCellFactory
    def self.cells
      (1..9).map { |position| TTT::Board::Cell.new(position: position) }
    end
  end

  let(:board) { TTT::Board.new cells: FakeCellFactory }

  it 'should be created' do
    board.should_not be_nil
  end

  it 'should know it\'s size' do
    board.size == 9
  end

end
