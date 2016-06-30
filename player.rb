require_relative 'deck'

class Player

  attr_accessor :player1 :player2

  def initialize
    @player1 = 52.times.map{|x| Card.new}
    @player2 = 52.times.map{|y| Card.new}
  end

  def player_deal
    player1_deal.card_value # How do I call a value on a deal??
    player2_deal.card_value
    player1_round = 0
    player2_round = 0
    war = 0
    if player1_deal < player2_deal
      player1_round += player1_round
      card.deal # The cards need to shift...
    elsif player1_deal > player2_deal
      player2_round += player2_round
      card.deal # The cards need to shift...
    else
      war += war
      card.deal # The cards need to shift without any round winners
    end
  end

  def round_total
    if player1_round < player2_round
      player_wins == player1
    elsif player1_round > player2_round
      player_wins == player2
    else
      puts "Game is a wash."
      puts "Would you like a rematch? (Y/N)"
      resp = gets.chomp&.downcase[0]
      if resp == "y"
        Game.new.play(false)
      else
        puts "Thanks for playing."
      end
  end

  def turn(this_player)
    self.send(
    this_player + "_deal=",
    self.send(this_player).inject(0){|sum, round| sum += card.deal}
    )
  end
