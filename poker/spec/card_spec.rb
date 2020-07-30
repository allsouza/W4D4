require "rspec"
require "card"

describe "Card" do 
    subject(:card) { Card.new(9, :spades) }
    describe "#initialize" do
        it "creates a number instance variable" do
            expect(card.number).to eq(9)
        end

        it "creates a suit instance variable" do
            expect(card.suit).to be(:spades)
        end

        it "creates a revealed boolean variable, set to false" do
            expect(card.revealed).to be false
        end
    end

    describe "#reveal" do
        it "sets revealed boolean to true" do
            card.reveal
            expect(card.revealed).to be true
        end
    end 

    describe "#hide" do
        it "sets revealed boolean to false" do
            card.reveal
            card.hide
            expect(card.revealed).to be false
        end
    end

    describe "#to_s" do
        it "returns a string value for the card" do
            expect(card.to_s).to eq("9 of Spades")
        end
    end
end
