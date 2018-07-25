require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")


class PubTest < MiniTest::Test
  def setup
    @drink_1 = Drink.new("Coke", 5)
    @drink_2 = Drink.new("Beer", 10)
    # @drinks = [@drink_1, @drink_2]
    @the_captain = Pub.new("The_captain", 0, [])
    @the_captain.add_drinks(@drink_1)
    @the_captain.add_drinks(@drink_2)


  end


  def test_pub_name()
    assert_equal("The_captain", @the_captain.pub_name())
  end

  def test_pub_till()
    assert_equal(0, @the_captain.pub_till())
  end

  def test_pub_drinks()
    assert_equal(2, @the_captain.pub_drinks_count())
  end








end
