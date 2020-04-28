class Restaurant
  attr_reader :name
  #created working @@all and def self.all for my own interest, then erased since that functionality isnt requested
  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    (ratings.inject {|sum, rating| sum += rating} / ratings.count).round(2)
  end

  def ratings
    reviews.map {|review| review.rating.to_f}
  end
end
