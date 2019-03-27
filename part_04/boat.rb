#!/usr/bin/env ruby
# encoding: UTF-8
#
class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motor_type}"
  end
end


boat = PowerBoat.new('Guppy', 'outboard')
boat.info