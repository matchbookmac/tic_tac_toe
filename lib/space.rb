class Space
  attr_reader(:x, :y, :marked_by, :id)
  @@spaces = []

  define_method(:initialize) do |attributes|
    @x = attributes.fetch(:x)
    @y = attributes.fetch(:y)
    @marked_by = nil
    @id = @@spaces.length().+(1)
  end

  define_method(:mark_by) do |player|
    @marked_by = player
  end

  define_singleton_method(:clear) do
    @@spaces = []
  end

  define_method(:save) do
    @@spaces.push(self)
  end

  define_singleton_method(:all) do
    @@spaces
  end

  define_singleton_method(:find) do |id|
    found_space = nil
    @@spaces.each() do |space|
      if space.id().eql?(id)
        found_space = space
      end
    end
    found_space
  end
end
