#!/usr/bin/env ruby
# encoding: UTF-8
#
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age:, occupation: nil, hobby: nil,birthplace: nil)
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

candidate1 = Candidate.new('Amy Nguyen', age: 37, occupation: 'Engineer', hobby: 'Lacrosse', birthplace: 'Seattle')
p candidate1
candidate2 = Candidate.new('Carl Barnes')
p candidate2