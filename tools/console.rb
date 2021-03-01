# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Barb", 220)
lifter2 = Lifter.new("Ken", 320)
lifter3 = Lifter.new("JJ", 280)

gym1 = Gym.new("Golds")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Average Joe's")

membership1 = Membership.new(35, lifter1, gym2)
membership2 = Membership.new(75, lifter2, gym1)
membership3 = Membership.new(25, lifter1, gym3)
membership4 = Membership.new(50, lifter3, gym1)

binding.pry

puts "Gains!"
