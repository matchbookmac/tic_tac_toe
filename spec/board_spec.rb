require('rspec')
require('board')

describe(Board) do
  describe('#find') do
    it('finds and returns a specific space on the board') do
      test_board = Board.new()
      expect(test_board.find(2)).to(eq(Space.find(2)))
    end
  end
end
