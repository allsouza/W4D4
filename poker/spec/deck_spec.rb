require "rspec"
require "deck"

describe "Deck" do
    subject(:deck) { deck = Deck.new }
    describe "#initialize" do
        it "initializes a cards array with 52 positions to hold card instances" do
            expect(deck.cards.length).to eq(52)
        end

        it "creates a suits array" do
            expect(deck.suits).to eq( %i(spades diamonds clubs hearts))
        end

        it "creates a numbers array" do
            expect(deck.numbers).to eq((1..13).to_a)
        end
    end

    describe "::create_cards" do

        it "it should return an array with 52 instances of Card" do
            d = Deck.create_cards
            expect(d.count).to eq(52).and(d[10]).to be_an_instance_of(Card)
        end

        it "there should not be any duplicate cards" do
            
        end
    end
end