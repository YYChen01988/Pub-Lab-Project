class Pub

  attr_reader :pub_name, :pub_till

  def initialize(pub_name, pub_till, pub_drinks)
    @pub_name = pub_name
    @pub_till = pub_till
    @pub_drinks = []
  end


  def add_drinks(new_drink)
    @pub_drinks << new_drink

  end

  def pub_drinks_count()
    return @pub_drinks.count()
  end

  def pub_increase_till(item)
    @pub_till += item.drink_price()

  end

  def pub_sell_item(item, customer)
    if pub_check_drunkenness(customer)
      pub_increase_till(item)
      customer.customer_buy(item)
    end
  end

  def pub_check_customer_age(customer)
    customer.check_customer_age()
  end

  def pub_check_drunkenness(customer)
    if customer.drunkenness() <10
      return true
    else
      return false
    end
  end

#
end
