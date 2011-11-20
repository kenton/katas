# The Cell class is used to ....
#
#### Requirements
# None
#
#

class Cell

  attr_accessor :game, :x, :y

  def initialize(game, x=0, y=0)
    @game = game
    @x = x
    @y = y
    game.cells << self
  end

  def neighbors
    @neighbors = []
    
    game.cells.each do |cell|
      # above
      if (cell.x == self.x) && (cell.y == self.y + 1)
        @neighbors << cell
      # below
      elsif (cell.x == self.x) && (cell.y == self.y - 1)
        @neighbors << cell
      # right
      elsif (cell.x == self.x + 1) && (cell.y == self.y)
        @neighbors << cell
      # left
      elsif (cell.x == self.x - 1) && (cell.y == self.y)
        @neighbors << cell
      # bottom-right
      elsif (cell.x == self.x + 1) && (cell.y == self.y - 1)
        @neighbors << cell
      # bottom-left
      elsif (cell.x == self.x - 1) && (cell.y == self.y - 1)
        @neighbors << cell
      # top-left
      elsif (cell.x == self.x - 1) && (cell.y == self.y + 1)
        @neighbors << cell
      # top-right
      elsif (cell.x == self.x + 1) && (cell.y == self.y + 1)
        @neighbors << cell
      end
    end

    @neighbors
  end

  def die!
    game.cells -= [self]
  end

  def dead?
    !game.cells.include?(self)
  end

end


