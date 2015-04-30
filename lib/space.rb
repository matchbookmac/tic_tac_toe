class Space
  attr_reader(:x, :y)

  define_method(:initialize) do |attributes|
    @x = attributes.fetch(:x)
    @y = attributes.fetch(:y)
  end
end
