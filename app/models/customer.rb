#a customer has many reviews
class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    save
  end

  #Customer full_name: returns the full name of the customer concatenated already? Self doesn't work because wasn't initialized with a full name so self.full_name doesn't exist even if I write a method for it
  def full_name
    "#{given_name} #{family_name}"
  
  end
  
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.given_name
    @given_name = given_name
  end

  def self.family_name
    @family_name = family_name
  end


end
