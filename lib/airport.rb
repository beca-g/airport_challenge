require_relative 'plane'
class Airport
  DEFAULT_CAPACITY = 10
  attr_reader :runway

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @runway = []
  end

  def empty?
    @runway.length.zero? ? true : false
  end

  def land(plane)
    @runway.push(plane)
  end

  def take_off
    fail("There are no planes to take off") if empty?

    @runway.pop
  end
end
