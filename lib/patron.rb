class Patron

    attr_reader :name, :interests

    #iteration 0
    def initialize(name)
        @name = name
        @interests = []
    end

    def add_interests(interest)
        @interests << interest
    end
end

