#!/usr/bin/env ruby
# encoding: UTF-8
#
class Vehicle
  attr_accessor :odometr, :gas_used

  def accelerate
    puts 'Floor it!'
  end

  def sound_horn
    puts 'Beep! Beep!'
  end

  def steer
    puts 'Turn front 2 wheels.'
  end

  def mileage
    return @odometr / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts 'Turn front wheels.'
  end
end

# truck = Truck.new
# truck.load_bed("259 bouncy balls")
# puts "The truck is carrying #{truck.cargo}."

# car = Car.new
# puts car.instance_variables
# car.odometr = 22914
# car.gas_used = 728
# puts car.instance_variables

# puts "Lifetime MPG:"
# puts car.mileage

motorcycle = Motorcycle.new
motorcycle.steer
motorcycle.accelerate