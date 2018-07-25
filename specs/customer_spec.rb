require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test
  def setup
    @Tom = Customer.new("Tom", 500)
  end

  def test_customer_name()
    assert_equal("Tom", @Tom.customer_name())
  end

  def test_customer_wallet()
    assert_equal(500, @Tom.customer_wallet())
  end




end
