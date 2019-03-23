#!/usr/bin/env ruby
# encoding: UTF-8

class Mage
  attr_accessor :name, :spell
  
  def enchant(target)
    puts "#{@name} casts #{spell} on #{target.name}"
  end
end
