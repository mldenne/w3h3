require_relative 'card'
require_relative 'player'

class Game

  attr_accessor


  def game_intro
    puts "Let's Play War!"
    puts "Each player will show a card. The player with the highest card number takes the round!"
    puts "Aces are high, ties are discarded. The winner will have the most cards when the players"
    puts "exhaust their decks."
  end

  def play(game_intro=true) # players take a turn, and the card value determines whether they win or lose the round
    turn("player1")
    gets.card_value
    player_deal
    turn("player2")
    gets.card_value
    player_deal
  end

  def determine_winner_round
    round_total
  end

  def determine_winner_wars
    war
  end

  def ask_for_rematch
    puts "#{player_wins} won this game after #{rounds_total} and survived #{war}."
    puts "Would you like a rematch? (Y/N)"
    resp = gets.chomp&.downcase[0]
    if resp == "y"
      Game.new.play(false)
    else
      puts "Thanks for playing."
    end
  end
