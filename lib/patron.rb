class Patron

    attr_reader :name, :interests

    def initialize(name)
        @name = name
        @interests = []
    end

    def add_interests(interest)
        @interests << interest
    end



end

# bob = Patron.new("Bob")
# #=> #<Patron:0x00007fdf16ba6128 @interests=[], @name="Bob">
# > bob.name
# #=> "Bob"
# > bob.interests
# #=> []
# > bob.add_interest("Dead Sea Scrolls")
# > bob.add_interest("Gems and Minerals")
# > bob.interests
# #=> ["Dead Sea Scrolls", "Gems and Minerals"]