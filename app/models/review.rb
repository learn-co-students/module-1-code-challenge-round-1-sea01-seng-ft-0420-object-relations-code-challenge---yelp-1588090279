require "pry"
class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant
  
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating 

        save 
    end

    def save
        @@all << self
    end

    def self.all
        @@all 
    end

    
end

#erin = Review.new("Erin", "Dragon City", 5)
#binding.pry 
