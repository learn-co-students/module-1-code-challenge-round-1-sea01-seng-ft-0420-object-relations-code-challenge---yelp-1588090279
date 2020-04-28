class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end
  def customers
    customers = reviews.map {|review| review.customer}
  end
  customers.uniq
end
def average_star_rating
  num = reviews.count
  total = reviews.reduce(0) {|sum, rev|} sum += rev.rating}
  avg = total/number
end
end
