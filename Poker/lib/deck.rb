require_relative "card.rb"
class Deck
    attr_reader :deck
    def initialize
        @deck = []
    end

    def make_deck
        suits = ["spade", "heart", "club", "diamond"]
        values = %w( A 2 3 4 5 6 7 8 9 T J Q K)

        suits.each do |suit|
            values.each do |value|
                @deck << Card.new(suit, value)
            end
        end
    end

end

# d1 = Deck.new
# d1.make_deck
# p d1