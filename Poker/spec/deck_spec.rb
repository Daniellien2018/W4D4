require "deck.rb"

describe Deck do
    let(:deck) {Deck.new}
    describe "#initialize" do 
        it "should be an array" do
            expect(deck.deck).to be_a Array
        end 
        it "should have 52 cards" do
            expect(deck.deck.length).to eq(52)
        end

        it "should have only 13 cards of each suit" do
            suitcounter = Hash.new(0)
            deck.deck.each { |card| suitcounter[card.sym] += 1 }
             expect(suitcounter.values.uniq.length).to eq(1)
        end
    end


end