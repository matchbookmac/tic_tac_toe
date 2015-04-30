require('pry')

class Board

  define_method(:initialize) do
    # @spaces = []
    y = 1
    x = 1
    until y == 4
      until x == 4
        @space = Space.new({:x => x, :y => y})
        @space.save()
        x += 1
      end
      y += 1
      x = 1
    end
    @id
  end

  define_method(:spaces) do
    @spaces
    # @spaces_array = []
    # @spaces.each() do |space|
    #   @space_array = []
    #   @space_array.push(space.x().to_i())
    #   @space_array.push(space.y().to_i())
    #   @spaces_array.push(@space_array)
    # end
    # @spaces_array
  end

  define_method(:find) do |id|
    Space.find(id)
    # @spaces[index]
    # @coordinates = []
    # @coordinates.push(@spaces[index].x())
    # @coordinates.push(@spaces[index].y())
    # @coordinates
  end
end
