class Restaurant
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  #Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    self.reviews.coustomer
  end

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    rate = []
    Review.all.restaurant.select do |res|
      res == self
      rate << Review.all.rating
    end
    sum = 0
    rate.each {|r| sum += r} 
    sum/rate.length
    
  end

end
