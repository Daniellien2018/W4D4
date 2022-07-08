require "card.rb"


describe "card" do
    let(:card) {Card.new(13,:H)}
    describe "#initialize" do 
        it "should take in a value and a sym " do 
            expect{Card.new(13)}.to raise_error(ArgumentError)
        end
        it "should have a reader for value" do
            expect(card.value).to eq(13)
        end 
        it "should have a reader for sym" do
            expect(card.sym).to eq(:H)
        end 
    end
end