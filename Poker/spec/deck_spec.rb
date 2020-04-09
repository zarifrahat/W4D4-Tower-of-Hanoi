require "rspec"
require 'deck.rb'

describe Deck do 
    subject(:deck) {Deck.new}

    describe "#initialize" do 
        it "should set @deck to an empty array" do 
            expect(deck.deck).to eq([])
        end
    end

    describe "#make_deck" do
        it "should make a deck of length 52" do
            deck.make_deck
            expect(deck.deck.length).to eq(52)
            
        end
        
        let(:as_card) { double("as_card", suit: "spade", value: "A") }
        let(:ah_card) { double("ah_card", suit: "heart", value: "A") }
        let(:ac_card) { double("ac_card", suit: "club", value: "A") }
        let(:ad_card) { double("ad_card", suit: "diamond", value: "A") }
        
        it "should have all 4 suits of each card" do
            expect(deck.deck[0]).to eq(as_card)
            expect(deck.deck[13]).to eq(ah_card)
            expect(deck.deck[26]).to eq(as_card)
            expect(deck.deck[39]).to eq(ad_card)
            deck.make_deck
        end
        
    end
end 