require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Restaurant has many Reviews
# Customer has many Reviews
# Reviews belongs to Customer and Restaurant
# Reviews is single source of truth

customer_1 = Customer.new("Matthew", "Sedlacek")
customer_2 = Customer.new("Julie","Anderson")
customer_3 = Customer.new("Edward","Davalle")
customer_4 = Customer.new("Sarah", "Maner")

customer_1.full_name
customer_2.add_review("canlis",5)
customer_3.num_reviews
customer_3.num_reviews
customer_3.average_star_rating

restaurant_1 = Restaurant.new("Canlis")
restaurant_2 = Restaurant.new("Tacos Chukis")
restaurant_3 = Restaurant.new("Delancey")
restaurant_4 = Restaurant.new("Artusi")

restaurant_4.name
restaurant_1.reviews
restaurant_1.customers
#(customer, restaurant, rating)

review_1 = Review.new("bob","sea star",5)
review_2 = Review.new("heather","the place",4)
review_3 = Review.new(customer_3,restaurant_4,2)
review_4 = Review.new(customer_3,restaurant_4,4)

review_3.customer
binding.pry
0 #leave this here to ensure binding.pry isn't the last line