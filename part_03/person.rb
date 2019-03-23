#!/usr/bin/env ruby
# encoding: UTF-8
#
class Person
  def greet_by_name(name)
    "Hello, #{name}!"
  end
end

class Friend < Person
  def greet_by_name(name)
    basic_geeting = super
    "#{basic_geeting} Glad to see you!"
  end
end

puts Friend.new.greet_by_name('Bert')
