#!/usr/bin/env ruby
# encoding: UTF-8
#
class Employee
  attr_reader :name

  def initialize(name='Anonymous')
    self.name = name
  end

  def name=(name)
    raise "Name can't be blank!" if name == ''
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

