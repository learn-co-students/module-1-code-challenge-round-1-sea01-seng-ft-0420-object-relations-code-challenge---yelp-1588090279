#belongs to a customer and to a restaurant
class Review
  attr_accessor  :rating
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

  def self.rating
    @rating = rating
  end

  def self.customer
    @customer = customer
  end

  def self.restaurant
    @restaurant = restaurant
  end

end