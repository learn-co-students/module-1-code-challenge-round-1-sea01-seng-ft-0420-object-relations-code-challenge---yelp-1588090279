class Restaurant
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def reviews
    Review.all.select{|review|review.restaurant==self}
  end
  # def customers_obj
  #   # this will return an array of the customer OBJECTS that have reviewed this restaurant
  #   # creating this to help the #customers method
  #   #### reviews.map{|review|review.customer}
  # end
  def customers
    # wants UNIQUE LIST - 
    # -- reviews.map this restaurant's reviews and return all customer full names - DONE ABOVE IN HELPER METHOD
    # take THAT array of customer objects and use .uniq on it
    # take THAT uniq array of customer objs and MAP each of their full_names with PUTS to make LIST
    #### customers_obj.uniq.map{|customer| puts customer.full_name}
    # AFTER MAKING THAT HELPER, i realized this would work (thanks Silicon Valley lab for teaching me that i can map into methods of each obj)
    #### reviews.map{|r|r.customer.full_name}.uniq.map{|c|puts c}
    # After asking Matthew for clarification or help with wording of deliverable and expectations, I THINK IT SHOULD BE a UNQIQUE array of customer OBJS??  :D
    reviews.map{|r|r.customer}.uniq
    # The alternative is to return unique array of customer FULL_NAMES:
    #### reviews.map{|r|r.customer.full_name}.uniq
  end
  def average_star_rating
    # iterate through self.reviews and MAP all ratings
    # sum that array
    # divide that number by self.reviews.count
    reviews.map{|review|review.rating}.sum/reviews.count
  end
end
