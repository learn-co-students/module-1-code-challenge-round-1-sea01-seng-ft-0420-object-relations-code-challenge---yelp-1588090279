class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name = family_name
    @@all << self
  end
  def full_name
    "#{given_name} #{family_name}"
  end
  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating.to_i)
  end
  # Let's build a helper!
  def reviews 
    Review.all.select{|review|review.customer==self}
  end
  def restaurants
    reviews.map{|review|review.restaurant}.uniq
  end
  def num_reviews
    reviews.count
  end
  def self.find_by_name(name)
    # iterate through all customers
    # compare "name" argument against each customer's full name(string)
    # return that customer obj
    # find returns first obj that doesn't come back false when compared against block
    all.find{|customer|customer.full_name==name}
  end
  def self.find_all_by_given_name(name)
    # same as above but with select, because it wants a return of an array of customer objs
    all.select{|customer|customer.given_name==name}
  end
  def self.all
    @@all
  end
end
