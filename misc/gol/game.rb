require './cell'

class Game

  attr_accessor :cells

  def initialize
    @cells = []
  end

  # should take some action on the cells for this world
  def tick!
    @cells.each do |cell|
      if cell.neighbors.count < 2
        cell.die!
      end
    end
  end

end
