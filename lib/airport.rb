require 'plane.rb'

class Airport
  attr_reader :planes
  attr_reader :capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end

  def land(plane)
    raise "Cannot land plan. Airport is full" if full?
    raise "Cannot land plan. It's too stormy" if stormy?
    planes << plane
  end

  def take_off
    raise "Cannot take off. There are no planes" if empty?
    raise "Cannot take off. It's too stormy" if weather == "stormy"
    planes.pop
  end

  private

  def full?
    planes.count == capacity
  end

  def empty?
    planes.empty?
  end

  def weather
    weather = ['sunny', 'stormy'].sample
  end
end
