# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
winston = Lifter.new("Winston", 200)
joy = Lifter.new("Joy", 400)
blair = Lifter.new("Blair", 600)
pf = Gym.new("Planet Fitness")
la = Gym.new("LA Fitness")
hour = Gym.new("24 hour Fitness")
membership = Membership.new(300, winston,pf)
membership2 = Membership.new(50, joy, la)
membership3 = Membership.new(75, blair, hour)
membership4 = Membership.new(300, blair, pf)
binding.pry

puts "Gains!"
