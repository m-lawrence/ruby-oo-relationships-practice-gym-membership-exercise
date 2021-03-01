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

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.lift_average
    my_lifters = Membership.all.map {|membership| membership.lifter}
    my_totals = my_lifters.uniq.map {|lifter| lifter.lift_total}
    my_totals.sum / my_totals.count
  end

  def total_cost
    memberships.map {|membership| membership.cost}.sum
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

end
