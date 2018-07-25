require("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Sammy")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Nemo")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])

  end

  def test_river_has_name()
    assert_equal("Amazon", @river.name)
  end

  def test_fish_count
    assert_equal(3, @river.fish_count())
  end

  def test_supply_fish
    supplied_fish = @river.supply_fish()
    assert_equal(Fish, supplied_fish.class())
    assert_equal(2, @river.fish_count())
  end

end
