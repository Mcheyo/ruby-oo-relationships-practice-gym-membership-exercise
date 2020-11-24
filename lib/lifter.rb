class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def my_memberships 
    Membership.all.select do  |memship|
      memship.lifter == self
    end
  end 

  def myGyms 

    self.my_memberships.map do |memships| 
      memships.gym
    end 
  end 

  def self.averageLift
    total = 0 
     mappedArray = Lifter.all.map do |lifter|
      total += lifter.lift_total
    end 
    
   total/Lifter.all.count
  end 

  def new_Gym(gym, m_cost)
    Membership.new(m_cost, self, gym )
  end 













end
