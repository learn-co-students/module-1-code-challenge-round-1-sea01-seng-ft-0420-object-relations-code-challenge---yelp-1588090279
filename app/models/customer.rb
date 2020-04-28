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

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    #For fun I would have set an if statement testing if rating was greater than 0 and less than or equal to 5, and if not, prompt the customer to give a fair rating
    #But if this were a job, I would want to give the employer exactly what they asked for
    #I could aslo write functions to detect if this customer was spamming a location with 1 star reviews
    #could even create class and has many relations with restaurant and 'Employee'. and not allow reviews published if restaurant.employees.any? {|employee| employee.full_name == self.full_name}
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.count
  end

  def self.find_by_name(name)
    all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    all.select {|customer| customer.given_name == name}
  end
end
