class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    save
  end

  # prints full name of customer
  def full_name
    "#{given_name} #{family_name}"
  end

  # returns all reviews associated with given instance of Customer
  def reviews
    Review.all.select {|review| review.customer == self}
  end

  # returns list of all restaurants instance of Customer has written a review for
  def restaurants
    self.reviews.map {|review| review.restaurant}.uniq
  end

  # adds a review for restaurant with number rating
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  # returns the total number of reviews that a customer has authored
  def num_reviews
    self.reviews.count
  end

  # give n a string of full name, returns the first customer whose full name matches
  def self.find_by_name(full_name)
    all.find {|customer| customer.full_name == full_name}
  end

  #given a string of a given name, returns an array containing all customers with given name
  def self.find_all_by_given_name(given_name)
    all.select {|customer| customer.given_name == given_name}
  end

  def self.all
    @@all
  end

  private

  def save
    @@all << self
  end

end
