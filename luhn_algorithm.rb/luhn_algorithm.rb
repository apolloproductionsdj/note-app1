class Luhn_Algorithm
  attr_accessor :card_no

  def initialize(card_no)
     @card_no = card_no
  end

  def split(card_no)
    card_no.split
    # .reverse
    # .each_slice(2)
    # .inject(0) do |sum, (a, b)|
    #   double = b.to_i * 2
    #   sum + a.to_i + (double > 9 ? double - 9 : double)
    # end % 10 == 0
  end


end 

card = Luhn_Algorithm.new(4070590981311)

card.split