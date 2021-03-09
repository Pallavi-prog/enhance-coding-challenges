
=begin

Write a program that creates a standard deck of playing cards in memory, shuffles it, and
deals a number of cards, specified in standard input, as text to the command line as well as
the sum of the card values (treat ace as one and picture cards as 10).

=end

class Card
   attr_reader :rank, :suit
 
   def initialize(rank, suit)
     @rank = rank
     @suit = suit
   end
 
   def output_card
     puts "#{self.rank} of #{self.suit}"
   end 
   
 end 
 
 class Deck
 
   def initialize(cardsRequired)
     @cardsRequired = cardsRequired   
     @cardSum=0 
     @deck = []
     suits = ["spades", "diamonds", "hearts", "clubs"]
     ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
     
     suits.each do |suit|
       ranks.each do |rank|
         card = Card.new(rank, suit)
         @deck << card
       end
     end
   end
 
 
   def output_deck
     #@deck.each do |card| 
      for i in 1..@cardsRequired
       @deck[i].output_card
       if @deck[i].rank == "A" 
         @cardSum+=1
       elsif @deck[i].rank == "J" || @deck[i].rank == "Q" ||@deck[i].rank == "K"
         @cardSum+= 10
       else
         @cardSum+=@deck[i].rank.to_i
       end
     end
   end
 
   def shuffle 
     @deck.shuffle!()
   end
 
   def sum_cards
      return @cardSum;
   end
end
 
puts "How many cards you want to play"
#inputCards = gets.chomp

# Method to validate input
def checkifnumber?(obj)
   obj = obj.to_s unless obj.is_a? String
   /\A[+-]?\d+(\.[\d]+)?\z/.match obj
 end

 inputCards = 0
 loop do
   inputCards = gets.chomp
   break if checkifnumber?(inputCards)
   puts "Input shoud be integer, please re-enter value"
 end

 
 deck = Deck.new(inputCards.to_i)
 deck.shuffle
 puts "Your random cards are as follows"
 deck.output_deck
 puts "Sum of cards is #{deck.sum_cards()}"
 
 