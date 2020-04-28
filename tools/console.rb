require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
steven = Customer.new("Steven", "Parsons")
steve = Customer.new("Steven", "Tyler")
kylee = Customer.new("Kylee", "Lane")
greg = Customer.new("Greg", "Lane")
andrew = Customer.new("Andrew", "Mahon")
brandon = Customer.new("Brandon", "Sowers")
gordon = Customer.new("Gordon", "Ramsay")

cap = Restaurant.new("Capitol Cider")
katsu = Restaurant.new("Katsu Burger")
shake = Restaurant.new("Shake Shack")
olive = Restaurant.new("Olive Garden")
cheese = Restaurant.new("Cheesecake Factory")

steven.add_review(cap, 5)
steven.add_review(cap, 4)
steven.add_review(katsu, 5)
steven.add_review(shake, 2)
steve.add_review(cap, 2)
steve.add_review(olive, 4)
kylee.add_review(cap, 3)
kylee.add_review(olive, 4)
greg.add_review(cap, 1)
greg.add_review(olive, 2)
greg.add_review(cheese, 4)
andrew.add_review(cap, 5)
andrew.add_review(shake, 2)
andrew.add_review(olive, 1)
gordon.add_review(olive, 1)
gordon.add_review(cap, 4)
gordon.add_review(cheese, 1)
gordon.add_review(shake, 1)
gordon.add_review(katsu, 2)
brandon.add_review(cap, 5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line