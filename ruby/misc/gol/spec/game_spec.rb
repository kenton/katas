require './cell'
require './game'

describe "the game of life" do
  let(:game) { Game.new }

  context "cell methods" do
    let(:cell) { Cell.new(game) }
    it "spawns a new cell at the given coordinates" do
      # new_cell = cell.spawn_at(game, 3, 4)
      new_cell = Cell.new(game, 3, 4)
      new_cell.should be_a(Cell)
      new_cell.x.should == 3
      new_cell.y.should == 4
      new_cell.game.should == game
      game.cells.should include(new_cell)
    end

    it "dies" do
      cell.die!
      game.cells.should_not include(cell)
    end
  
    context "finds a neighboring cell" do
      it "located above a given cell" do
        new_cell = Cell.new(game, 0, 1)
        cell.neighbors.count.should == 1
      end
      it "located below a given cell" do
        new_cell = Cell.new(game, 0, -1)
        cell.neighbors.count.should == 1
      end
      it "located to the right of a given cell" do
        new_cell = Cell.new(game, 1, 0)
        cell.neighbors.count.should == 1
      end
      it "located to the left of a given cell" do 
        new_cell = Cell.new(game, -1, 0)
        cell.neighbors.count.should == 1
      end
      it "located to the bottom right of a given cell" do
        new_cell = Cell.new(game, 1, -1)
        cell.neighbors.count.should == 1
      end
      it "located to the bottom left of a given cell" do
        new_cell = Cell.new(game, -1, -1)
        cell.neighbors.count.should == 1
      end
      it "located to the top left of a given cell" do 
        new_cell = Cell.new(game, -1, 1)
        cell.neighbors.count.should == 1
      end
      it "located to the top right of a given cell" do
        new_cell = Cell.new(game, 1, 1)
        cell.neighbors.count.should == 1
      end
    end
  end

  describe "Rule 1: Any live cell with fewer than two live neighbours dies, as if caused by under-population" do
    it "**** does something with cells with less than two neighbors" do
      cell = Cell.new(game)
      new_cell = Cell.new(game, 0, 2)
      game.tick!
      cell.should be_dead
    end
  end

end
