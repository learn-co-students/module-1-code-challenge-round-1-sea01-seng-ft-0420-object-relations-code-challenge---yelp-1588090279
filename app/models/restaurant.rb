class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = self.reviews.map {|review| review.rating}
    ratings.sum/ratings.count
  end
end
