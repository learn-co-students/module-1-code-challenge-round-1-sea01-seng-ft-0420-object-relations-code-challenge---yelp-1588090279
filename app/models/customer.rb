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
  def add_review (restaurant, rating)
    Review.new(self, restaurant, rating)
  end
  def user_reviews
    Review.all.select {|review| review.customer == self}
  end
  def num_reviews
    user_reviews.count
  end
  def restaurants
    user_reviews.map {|rest| rest.restaurant}.uniq
  end
  def self.find_by_name(name)
    customer = self.all.find {|name| name.full_name.include? (name)}
    customer.full_name
  end
  def self.find_all_by_given_name(name)
    customer = self.all.find_all {|name| name.full_name.start_with?(name)}
  end
end
