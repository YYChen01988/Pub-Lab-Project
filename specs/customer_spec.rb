require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")


class CustomerTest < MiniTest::Test
  def setup
    @Tom = Customer.new("Tom", 500, 45)
    @Billy = Customer.new("Billy", 600, 15)
    @drink_1 = Drink.new("Coke", 5)
  end

  def test_customer_name()
    assert_equal("Tom", @Tom.customer_name())
  end

  def test_customer_wallet()
    assert_equal(500, @Tom.customer_wallet())
  end

  def test_customer_buy_drink()
    result = @Tom.customer_buy(@drink_1)
    assert_equal(495, result)
  end

  def test_customer_age()
    assert_equal(45, @Tom.customer_age() )
  end

  def test_check_customer_age()
    assert_equal(true, @Tom.check_customer_age())
    assert_equal(false, @Billy.check_customer_age())
  end




end
