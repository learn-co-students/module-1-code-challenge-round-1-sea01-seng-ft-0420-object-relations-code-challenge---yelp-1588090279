require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john = Customer.new("John", "Rusch")
ted = Customer.new("Ted", "Danson")
shelley = Customer.new("Shelley", "Long")
woody = Customer.new("Woody", "Harrelson")
john_2 = Customer.new("John", "Gush")
john_3 = Customer.new("John", "Roberts")

cheers = Restaurant.new("Cheers")
fridays = Restaurant.new("TGI Friday's")
chilis = Restaurant.new("Chili's Too")

john.add_review(cheers, 5)
john.add_review(fridays, 3)
ted.add_review(chilis, 2)
shelley.add_review(cheers, 4)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line