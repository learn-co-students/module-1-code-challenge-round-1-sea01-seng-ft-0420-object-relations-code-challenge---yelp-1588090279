class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    my_customers = []
    Review.all.map do |review|
      if review.restaurant == self
        my_customers << review.customer
      end
    end
    my_customers.uniq
  end

  def average_star_rating
    my_ratings = []
    reviews.map do |review|
      my_ratings << review.rating
    end
    my_ratings.sum.to_f / my_ratings.length
  end

end
