require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# class Customer
#   attr_accessor :given_name, :family_name
#   #@@all = []
#   def initialize(given_name, family_name)
#     @given_name = given_name
#     @family_name  = family_name
#   end

#   def full_name
#     "#{given_name} #{family_name}"
#   end

# =begin
#   def self.all
#     @@all << [] 
#   end
# =end

#   #full_name
# end

# class Restaurant
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def restaurant_name
#     "#{name}"

#   end


end

#binding.pry
c1 = Customer.new("Giselle", "Medina")
r1 = Restaurant.new("La" "Veros")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line