require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
katie = Customer.new("Katie", "Washington")
chris = Customer.new("Christopher", "Smith")
ryan = Customer.new("Ryan", "Carmichael")

#given_name test
chris.given_name = "Chris"
#Restaurant name
bingos = Restaurant.new("Bingo's")
cap = Restaurant.new("Captain's")
sunbreak = Restaurant.new("Sunbreak Cafe")

#reviews
review1 = Review.new(katie.full_name, bingos, 8)
review2 = Review.new("Ben", "McDonald's", 2)
review3 = Review.new("Jimmy", "Bingo's", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line