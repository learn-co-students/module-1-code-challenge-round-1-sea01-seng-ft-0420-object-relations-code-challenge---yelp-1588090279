require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

colton = Customer.new("Colton", "Kaiser")
christina = Customer.new("Christina", "Garrison")
joe = Customer.new("Joe", "Schmoe")
jimmy = Customer.new("Jimmy", "Beam")
colton2 = Customer.new("Colton", "2")

applebees = Restaurant.new("Applebees")
mcdonalds = Restaurant.new("McDonalds")

review1 = Review.new(colton, applebees, 4)
review2 = Review.new(christina, mcdonalds, 2)
review3 = Review.new(joe, applebees, 2)
review4 = Review.new(jimmy, mcdonalds, 5)
review5 = Review.new(colton, mcdonalds, 3)
review6 = Review.new(colton, applebees, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line