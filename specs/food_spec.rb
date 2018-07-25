require("minitest/autorun")
require("minitest/rg")
require_relative("../food.rb")

class FoodTest < MiniTest::Test
  def setup
    @food_1 = Food.new("Apple", 1, 3)
  end

  def test_food_name()
    assert_equal("Apple", @food_1.food_name())
  end

  def test_food_price()
    assert_equal(1, @food_1.food_price())
  end

  def test_food_rejuvenation_level()
    assert_equal(3, @food_1.rejuvenation_level())
  end




end
