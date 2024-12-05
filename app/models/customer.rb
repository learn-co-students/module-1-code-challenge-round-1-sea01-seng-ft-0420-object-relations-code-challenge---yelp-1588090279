require "pry"
class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    save 
  end

  def self.all
    @@all 
  end

  def save
    @@all << self 
  end

  def full_name(given_name, family_name)
    "#{given_name} #{family_name}"
    puts given_name + family_name

  end


  #link to review
  def new_review(review, restaurant)
    Review.new(review, restaurant, self)
  end

  def restaurant
    Restaurant.all.select{|restaurant|restaurant.customer == self}
  end

  def restaurants
    restaurant.map{|restaurant|restaurant.review}.uniq

  end

  def num_reviews
    Review.all.count
  end

  
  def self.find_by_name
    self.all.find{|full_name|self.full_name}
  end

  def self.find_all_by_given_name
    self.all.find_all{|full_name|self.full_name}
  end
end

george = Customer.new("George", "Washington")

#binding.pry
