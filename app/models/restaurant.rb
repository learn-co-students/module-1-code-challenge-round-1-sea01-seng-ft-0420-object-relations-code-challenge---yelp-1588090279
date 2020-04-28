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
    self.reviews.sum {|review| review.rating} / self.reviews.count.to_f
  end
end
