require('rspec')
require('board')

describe(Board) do
  describe('#create') do
    it('creates 9 spaces when the board is initialized') do
      test_board = Board.new()
      expect(test_board.spaces()).to(eq([[1, 1], [2, 1], [3, 1], [1, 2], [2, 2], [3, 2], [1, 3], [2, 3], [3, 3]]))
    end
  end

  describe('#find') do
    it('finds and returns a specific space on the board') do
      test_board = Board.new()
      expect(test_board.find(2)).to(eq([3,1]))
    end
  end
end
