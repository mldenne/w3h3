# determine values of cards based on rank and suit

class Card

  attr_accessor :rank, :suit, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = determine_value
  end

  def determine_value
    if rank == "A"
      self.value = 14
      self.value = card(i)
    elsif rank == "K"
      self.value = 13
      self.value = card(+=i)
    elsif rank == "Q"
      self.value = 12
      self.value = card(+=i)
    elsif rank == "J"
      self.value = 11
      self.value = card(+=i)
    else
      rank = rank.to_i
      self.value = card(+=i) # how do I make these cards into card5-13?
    end
  end

  def >(other)
    value > other.value
  end

  def card_value
    card(i) > card(+=i)
  end

end
