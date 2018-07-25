# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
require_relative("fish")

class River

  attr_reader :name

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.count()
  end

  def supply_fish()
    return @fish.shift()
  end

end
