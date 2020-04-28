require 'pry'

class Review
  attr_accessor :rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating

    @@all <<self

  end

  def rating
    @rating
  end


  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def customer
    Customer.all.select {|customer|customer.given_name == self.customer}
  end

  def restaurant
    Restaurant.all.select {|restaurant|restaurant.name == self.restaurant}
  end

  def self.all
    @@all
  end


end