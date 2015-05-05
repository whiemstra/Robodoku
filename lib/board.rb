require 'row'
require 'column'

class Board
  attr_reader :input, :grid

  def initialize(text_file)
    @input = text_file
    @grid = []
  end

  def set_up_grid
    rows = @input.split('/n')
    rows.map do |row|
      numbers = row.split("")
      numbers.each do |n|
        n.to_i
      end
    end
  end

end
