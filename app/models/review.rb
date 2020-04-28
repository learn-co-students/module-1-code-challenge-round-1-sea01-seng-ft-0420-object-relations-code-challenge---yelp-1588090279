class Review
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end
    
    #returns the rating for a restaurant.
    def rating
        @rating
    end
    
    #returns all of the reviews
    def self.all
        @@all
    end

end