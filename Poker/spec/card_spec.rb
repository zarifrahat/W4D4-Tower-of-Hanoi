require "card.rb"
require "rspec"

describe Card do 

    subject(:card) { Card.new("spade", "A")}
    describe "#initialize" do

        it "should set a suit" do 
            expect(card.suit).to eq("spade")
        end

        it "should set a value" do 
            expect(card.value).to eq("A")
        end
    end
    
end