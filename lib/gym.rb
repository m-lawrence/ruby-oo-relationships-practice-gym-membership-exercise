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

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters 
    memberships.map {|membership| membership.lifter}
  end

  def lifter_names
    lifters.map {|lifter| lifter.name}
  end

  def lifter_total
    lifters.map {|lifter| lifter.lift_total}.sum
  end


end
