require_relative "card.rb"

class Deck 
    attr_reader :deck
    def initialize
        deck = []
        symbols = ["\u2660","\u2661","\u2662","\u2663"].each do |symb|
            (1..13).each do |i|
                  deck << Card.new(i,symb)
            end
         end
        @deck = deck.shuffle
    end
    
end

