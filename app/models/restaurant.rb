#a restaurant has many reviews
class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.name
    @name = name
  end

  def reviews
    #bingos = <Restaurant:0x00007f8fb495beb0 @name="Bingo's">
    @all_reviews = []
    get_reviews
    @all_reviews
  end

  #not able to finish - still trying to work out relationship and how to write that out in a method
  def get_reviews
    @all_reviews << self.review
  end

end
