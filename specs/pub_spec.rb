require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")


class PubTest < MiniTest::Test
  def setup
    @drink_1 = Drink.new("Coke", 5, 0)
    @drink_2 = Drink.new("Beer",10, 2)
    drinksQuantity = {@drink_1 => 5, @drink_2 => 10}
    # @drinks = [@drink_1, @drink_2]
    @the_captain = Pub.new("The_captain", 0, drinksQuantity)
    # @the_captain.add_drinks(@drink_1)
    # @the_captain.add_drinks(@drink_2)

    @Tom = Customer.new("Tom", 500, 45, 0)
    @Billy = Customer.new("Billy", 600, 15, 11)


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
  #
  def test_increase_till()
    @the_captain.pub_increase_till(@drink_1)
    assert_equal(5, @the_captain.pub_till())
  end
  #
  def test_pub_sell_item()
    @the_captain.pub_sell_item(@drink_1, @Tom)
    assert_equal(5, @the_captain.pub_till())

    result = @Tom.customer_wallet()
    assert_equal(495, result)
  end
  #
  def test_pub_check_customer_age()
    assert_equal(true, @the_captain.pub_check_customer_age(@Tom))
    assert_equal(false, @the_captain.pub_check_customer_age(@Billy))
  end
  #
  def test_pub_check_drunkenness()
    assert_equal(false, @the_captain.pub_check_drunkenness(@Billy))
  end
  #
  def test_stock_value()
    assert_equal(125, @the_captain.stock_value())
  end

end
