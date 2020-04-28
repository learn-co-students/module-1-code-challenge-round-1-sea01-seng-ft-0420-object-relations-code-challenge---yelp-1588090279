class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  # returns a unique list of all customers who have reviewed a particular restaurant
  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  # returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    ratings = self.reviews.map {|review| review.rating}
    ratings.sum(0.0) / ratings.size
  end

end
