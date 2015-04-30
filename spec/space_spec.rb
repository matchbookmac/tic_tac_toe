require('rspec')
require('space')

describe(Space) do
  before() do
    Space.clear()
  end

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

  describe('#mark_by') do
    it('lets a player mark the space') do
      test_player = Player.new({:mark => 'X'})
      test_space = Space.new({:x => 1, :y => 2})
      test_space.mark_by(test_player)
      expect(test_space.marked_by()).to(eq(test_player))
    end
  end

  describe('#save') do
    it('saves a space to the array of spaces') do
      test_space = Space.new({:x => 1, :y => 2})
      test_space.save()
      expect(Space.all()).to(eq([test_space]))
    end
  end

  describe('.clear') do
    it('clears the array of spaces') do
      test_space = Space.new({:x => 1, :y => 2})
      test_space.save()
      Space.clear()
      expect(Space.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds space by id') do
      test_space = Space.new({:x => 1, :y => 2})
      test_space.save()
      expect(Space.find(test_space.id())).to(eq(test_space))
    end
  end

end
