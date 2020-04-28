require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Aidan", "Muller-Cohn")
customer2 = Customer.new("Sofie", "Blankenship")
customer3 = Customer.new("Stellan", "Muller-Cohn")
customer4 = Customer.new("Judy", "Muller-Cohn")
customer1_first = customer1.given_name
customer1_last = customer1.family_name
customer1.given_name = "Judy"
customer1.family_name = "Cohn"
customer1_first = customer1.given_name
customer1_last = customer1.family_name
all_customers = Customer.all

restaurant1 = Restaurant.new("Rubios")
restaurant2 = Restaurant.new("Kotija")
restaurant1_name = restaurant1.name

review1 = Review.new(customer1, restaurant1, 7)
review2 = Review.new(customer2, restaurant1, 8)
review3 = Review.new(customer3, restaurant1, 5)
review4 = Review.new(customer2, restaurant2, 9)
review5 = Review.new(customer1, restaurant1, 8)
review1_customer = review1.customer
review1_restaurant = review1.restaurant
review1_rating = review1.rating
all_reviews = Review.all

restaurant1_reviews = restaurant1.reviews
restaurant1_customers = restaurant1.customers

customer1_restaurants = customer1.restaurants
customer2_restaurants = customer2.restaurants
customer1.add_review(restaurant2, 9)
customer1_restaurants2 = customer1.restaurants
customer1_review_count = customer1.num_reviews

customer_found = Customer.find_by_name("Judy Cohn")
customer_found2 = Customer.find_all_by_given_name("Judy")

restaurant1_average_rating = restaurant1.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line