  require 'pry'
  require_relative 'patron'
  
  class Museum
    attr_reader :name, :exhibits, :revenue

    def initialize(name)
        @name = name
        @exhibits = {}
        @revenue = 0
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

    

  end

#   Museums can admit Patrons. When a Patron is admitted, the 
#   Museum gets 10 dollars for general admittance plus revenue 
#   for each exhibit the Patron is interested in. Some Patrons 
#     have interests for which there is no exhibit, and thus no 
#    revenue is generated. Follow this interaction pattern:


#  bob = Patron.new("Bob")
#  bob.add_interest("Gems and Minerals")
#  bob.add_interest("Dead Sea Scrolls")
#  bob.add_interest("Imax")

#  sally = Patron.new("Sally")
#  sally.add_interest("Dead Sea Scrolls")

#  dmns.revenue
# => 0
#  dmns.admit(bob)
#  dmns.admit(sally)
#  dmns.revenue
#=> 40
  
  #iteration 1
    # > dmns = Museum.new("Denver Museum of Nature and Science")
    # > dmns.name
    # #=> "Denver Museum of Nature and Science"
    # > dmns.add_exhibit("Dead Sea Scrolls", 10)
    # > dmns.add_exhibit("Gems and Minerals", 0)