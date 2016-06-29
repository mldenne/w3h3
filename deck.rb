 # 52 cards in a deck, cards must be shuffled
require_relative 'card'

 class Deck

   RANK = %w(2 3 4 5 6 7 8 9 10 J Q K A)
   SUIT = %w(Spade Heart Club Diamond)

   attr_accessor :cards

   def initialize
     @cards = []
     SUIT.each do |suit|
       RANK.each do |rank|
         @cards << Card.new(suit, rank)
       end
     end
     @cards.shuffle!
   end

   def deal
     cards.shift
   end

 end
