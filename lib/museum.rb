  class Museum
    attr_reader :name, :exhibits

    def initialize(name)
        @name = name
        @exhibits = []
    end

    def add_exhibit(exhibit, cost)
        @exhibits << [exhibit, cost]
    end


    def test
    end
    
  end

  
  
  #iteration 1
    # > dmns = Museum.new("Denver Museum of Nature and Science")
    # > dmns.name
    # #=> "Denver Museum of Nature and Science"
    # > dmns.add_exhibit("Dead Sea Scrolls", 10)
    # > dmns.add_exhibit("Gems and Minerals", 0)