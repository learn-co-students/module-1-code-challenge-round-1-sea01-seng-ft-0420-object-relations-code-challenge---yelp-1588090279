require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
taku = Restaurant.new("taku")
suika = Restaurant.new("suika")
customer1 = Customer.new("Trevor", "Low")
customer2 = Customer.new("Alexis", "Low")
rev1 = Review.new("Trevor Low", "Takue", "4")
rev2 = Review.new("Alexis Low", "Suika", "5")
customer1.num_reviews
customer1.restaurants
taku.customers
taku.num_reviews
taku.average_star_rating


binding.pry
0 #leave this here to ensure binding.pry isn't the last line