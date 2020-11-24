class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 


  def my_memships 
    Membership.all.select do |memships|
      memships.gym == self 
    end
  end 

  def my_lifters 
    self.my_memships.map do |memships|
      memships.lifter
    end
  end 

  def my_lifters_name
    self.my_lifters.map do |lifter| 
      lifter.name
    end

  end 
 
   def lift_total 
    total = 0 
    
    self.my_lifters.map do |lifter|
     total += lifter.lift_total
    end 
    
    
    total

   end

























end
