require('rspec')
require('board')

describe(Board) do
  describe('#create') do
    it('creates 9 spaces when the board is initialized') do
      @board = Board.new()
      expect(@board.spaces()).to(eq([[1, 1], [2, 1], [3, 1], [1, 2], [2, 2], [3, 2], [1, 3], [2, 3], [3, 3]]))
    end
  end
end
