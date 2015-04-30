require('rspec')
require('space')

describe(Space) do
  describe('#x_coordinate') do
    it('returns the space\'s x coordinate') do
      test_space = Space.new({:x => 1, :y => 2})
      expect(test_space.x()).to(eq(1))
    end
  end

  describe('#y_coordinate') do
    it('returns the space\'s y coordinate') do
      test_space = Space.new({:x => 1, :y => 2})
      expect(test_space.y()).to(eq(2))
    end
  end

end
