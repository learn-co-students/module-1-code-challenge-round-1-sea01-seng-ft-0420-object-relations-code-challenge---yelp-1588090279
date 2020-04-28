class Review
    attr_reader :customer, :restaurant, :rating

    @@all = []
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        save
    end

    def self.all
        @@all
    end

    private

    def save
        @@all << self
    end

end