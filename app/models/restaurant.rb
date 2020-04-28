require "pry"
class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    save 
  end
 
  def self.all
    @@all 
  end

  def save 
    @@all << self 
  end
end

#link to Review
def new_review(review, customer)
  Review.new(review, self, customer)
end

def reviews
  Review.all.select{|review|review.restaurant == self}
end

def customers
Customer.map{|customer|customer.restaurant == self}.uniq
end

def average_star_rating
reviews / review

end

macks = Restaurant.new("Macks")
#binding.pry
0