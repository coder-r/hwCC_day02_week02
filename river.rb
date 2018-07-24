# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
require_relative("fish")
class River

  def initialize(name, fish_stock)
    @name = name
    @fish_stock = fish_stock
  end

  def fish_count()
    return @fish_stock.count
  end

  def lose_fish()
    @fish_stock.pop
  end

end
