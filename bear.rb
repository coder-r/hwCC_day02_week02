
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"


#
# A bear should have an empty stomach ( maybe an array )
require_relative("river")
require_relative("fish")

class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def food_count
    return @belly.count()
  end

  def take_fish(river)
    @belly.push(river.supply_fish())
  end

  def roar()
    return "Rawwr!!"
  end
end
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
#
# Extensions
# A bear could have a roar method
# A bear could have a food_count method
# A river could have a fish_count method
