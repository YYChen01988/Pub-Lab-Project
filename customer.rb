class Customer

  attr_reader :customer_name, :customer_wallet, :customer_age

  def initialize(customer_name, customer_wallet, customer_age)
    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @customer_age = customer_age
  end

  def customer_buy(purchase)
    @customer_wallet -= purchase.drink_price()
  end

  def check_customer_age()
    if @customer_age >= 18
      return true
    else
      return false
    end
  end



end
