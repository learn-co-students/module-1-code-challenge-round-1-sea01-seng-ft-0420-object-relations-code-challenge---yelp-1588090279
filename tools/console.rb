require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Justin","Langlinais")
c2 = Customer.new("Ashton","Ellis")
c3 = Customer.new("Joe","Peterson")
c4 = Customer.new("Keenan","Cornelius")
c5 = Customer.new("Kaynan","Duarte")
c6 = Customer.new("Joe","Cartoon")
c7 = Customer.new("Joe","Exotic")
r1 = Restaurant.new("Big Bubba's Burger Bar")
r2 = Restaurant.new("Holy Potatoes")
r3 = Restaurant.new("Granny's Gravyhouse!")
review1 = Review.new(c1,r2,6)
review2 = Review.new(c2,r1,8)
review3 = Review.new(c3,r1,"2")
review4 = Review.new(c4,r1,9)
c4.add_review(r2,"9")
c5.add_review(r2,5)
c5.add_review(r2,6)
c5.add_review(r1,3)
c5.add_review(r3,10)
c1.add_review(r2,9)
c2.add_review(r1,"5")
c7.add_review(r2,10)
c6.add_review(r2,7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line