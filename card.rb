class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

end

card = Card.new(10, :spades)
card.rank = 9
puts card
puts card.rank
puts card.suit