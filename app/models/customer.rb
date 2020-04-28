class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    my_restaurants = []
    Review.all.map do |review|
      if review.customer == self
        my_restaurants << review.restaurant
      end
    end
    my_restaurants.uniq
  end

  def add_review(restaurant, rating)
    new_review = Review.new(self, restaurant, rating)
  end

  def num_reviews
    my_reviews = Review.all.select do |review|
      review.customer == self
    end
    my_reviews.length
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |customer|
      customer.given_name == name
    end
  end

end
