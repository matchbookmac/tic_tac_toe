require('pry')

class Board

  define_method(:initialize) do
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

  define_method(:find) do |id|
    Space.find(id)
  end
end
