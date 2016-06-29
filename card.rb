# needs face/rank, suit and value

require './deck.rb'


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
    elsif rank == "K"
      self.value = 13
    elsif rank == "Q"
      self.value = 12
    elsif rank == "J"
      self.value = 11
    else
      rank = rank.to_i
    end
  end

end
