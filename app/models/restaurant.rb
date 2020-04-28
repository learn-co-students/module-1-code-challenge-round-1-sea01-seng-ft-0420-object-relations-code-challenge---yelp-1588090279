require 'pry'

class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def reviews
    Review.all.each {|review| review}
  end 

  def customers
    Customer.all.each do |customer|
      customer.full_name.uniq!
    end
  end

  def name
    @name
  end

  def self.all
    @@all
  end
 

end
