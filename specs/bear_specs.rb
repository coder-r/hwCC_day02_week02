
require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Sammy")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Nemo")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])
    @bear = Bear.new("Paddington", "Grizzly")
  end

  def test_belly_starts_empty
    assert_equal(0, @bear.food_count())
  end

  def test_bear_can_get_fish_from_river
    @bear.take_fish(@river)
    # The Bear has taken the fish from the river
    # We should now have 1 fish in both Bear and River
    assert_equal(1, @bear.food_count())
    assert_equal(2, @river.fish_count())
  end

  def test_roar
    assert_equal("Rawwr!!", @bear.roar())
  end

end
