class Spot
  attr_reader

  def initialize(coordinates)
    @coordinates = coordinates
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end
end
