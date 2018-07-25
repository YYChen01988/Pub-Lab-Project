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




end
