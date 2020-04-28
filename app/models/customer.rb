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
  
  #Returns a unique array of all restaurants a customer has reviewed
  def restaurants
    res = []
    Review.all.customer.select do |customer|
      customer == self
      res << Review.all.restaurant
    end
    res
  end
  #given a restaurant object and a star rating (as an integer), 
  #creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end
  
  #Returns the total number of reviews that a customer has authored
  def num_reviews
    i = 0
    Review.all.customer.select do |customer|
      customer == self
      i += 1
    end
    i
  end
  
  #given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find {|item| item == name}
  end
  #given a string of a given name, returns an array containing all customers with that given name
  def self.find_all_by_given_name(name)
    self.all.given_name.select {|giv| giv == name}
  end

end
