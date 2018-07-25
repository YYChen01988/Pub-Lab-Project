require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../food.rb")



class CustomerTest < MiniTest::Test
  def setup
    @Tom = Customer.new("Tom", 500, 45, 2)
    @Billy = Customer.new("Billy", 600, 15, 10)
    @drink_1 = Drink.new("Coke", 5, 0)
    @drink_2 = Drink.new("Beer", 5, 2)
    @food_1 = Food.new("Apple", 1, 3)

  end

  def test_customer_name()
    assert_equal("Tom", @Tom.customer_name())
  end

  def test_customer_wallet()
    assert_equal(500, @Tom.customer_wallet())
  end

  def test_customer_buy_drink_change_wallet()
    @Tom.customer_buy(@drink_1)
    result_wallet = @Tom.customer_wallet()
    assert_equal(495, result_wallet)
  end

  def test_customer_buy_drink_add_drunkenness()
    @Tom.customer_buy(@drink_2)
    result_drunkenness = @Tom.drunkenness()
    assert_equal(4, result_drunkenness)
  end

  def test_customer_buy_drink_minus_drunkenness()
    @Billy.customer_buy(@food_1)
    result_drunkenness = @Billy.drunkenness()
    assert_equal(7, result_drunkenness)
  end



  def test_customer_age()
    assert_equal(45, @Tom.customer_age() )
  end

  def test_check_customer_age()
    assert_equal(true, @Tom.check_customer_age())
    assert_equal(false, @Billy.check_customer_age())
  end

  def test_drunkenness()
    assert_equal(2, @Tom.drunkenness())
  end








end
