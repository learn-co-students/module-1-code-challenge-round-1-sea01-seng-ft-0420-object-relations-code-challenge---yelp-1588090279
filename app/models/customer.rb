require 'pry'

class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @full_name = "#{@given_name} #{@family_name}"
    @@all << self
  end

  def full_name
    @@all.each do |customer|
      puts "#{customer.given_name} #{customer.family_name}"
    end
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select {|reviews|review.restaurant == self}
  end

  def self.find_by_name (full_name)
    Review.all.find {|review|review.customer == self.full_name}
  end

  def self.find_all_by_given_name(name)
    Review.all.select {|review| review.customer == self.given_name}
  end 

  def all_ratings
]    Review.all.map {|reviews| reviews.rating}
  end

  def num_reviews
    all_ratings.length
  end

  def average_star_rating
    all_ratings[0] / num_reviews
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end



end
