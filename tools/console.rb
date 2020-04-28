require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("given_name1", "family_name1")
c2 = Customer.new("given_name2", "family_name2")
c3 = Customer.new("given_name1", "family_name3")

r1 = Restaurant.new("restaurant1")
r2 = Restaurant.new("restaurant2")

review1 = Review.new(c1, r1, 4)
review2 = Review.new(c2, r1, 5)
review3 = Review.new(c3, r2, 4)
review4 = Review.new(c2, r1, 3)
review5 = Review.new(c3, r2, 3)

review6 = c1.add_review(r1,3)
review7 = c1.add_review(r2,5)


puts "you got this"

binding.pry
0 #leave this here to ensure binding.pry isn't the last line