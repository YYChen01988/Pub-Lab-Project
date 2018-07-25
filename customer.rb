class Customer

  attr_reader :customer_name, :customer_wallet

  def initialize(customer_name, customer_wallet)
    @customer_name = customer_name
    @customer_wallet = customer_wallet
  end

  def customer_buy(purchase)
    @customer_wallet -= purchase.drink_price()
  end





end
