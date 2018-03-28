  require 'pry'
  require_relative 'patron'
  
  class Museum
    attr_reader :name, :exhibits, :revenue, :patrons

    def initialize(name)
        @name = name
        @exhibits = {}
        @revenue = 0
        @patrons = []
    end

    def add_exhibit(exhibit, cost)
        exhibits[exhibit] = cost
    end

    def admit(name)
        @revenue += 10
       
        name.interests.each do |interest|
            if interest == exhibits.key?(interest)
                @revenue += exhibits[interest]
            end
        end
    end

    #if patrons interest matches exhibit name, shuffle name into 
    #array
    def patrons(name)
        patrons << name
    end


    def patrons_of(exhibit)
        patrons_of_exhibit = []

        patrons.each do |patron|
            if interest == exhibit
                patrons_of_exhibit << name
            end
        end
        return patrons_of_exhibit
    end
    
end
