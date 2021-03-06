class Customer

  attr_reader :customer_name, :customer_wallet, :customer_age, :drunkenness

  def initialize(customer_name, customer_wallet, customer_age, drunkenness)
    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @customer_age = customer_age
    @drunkenness = drunkenness
  end

  def customer_buy(purchase)
    if purchase.class == Drink && check_customer_age()
      @customer_wallet -= purchase.drink_price()
      @drunkenness += purchase.alcohol_level()
    elsif purchase.class == Food
      @customer_wallet -= purchase.food_price()
      @drunkenness -= purchase.rejuvenation_level()
    end

  end

  def check_customer_age()
    if @customer_age >= 18
      return true
    else
      return false
    end
  end









end
