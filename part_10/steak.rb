#!/usr/bin/env ruby
# encoding: UTF-8
#
class Steak
  include Comparable
  attr_accessor :grade
  GRADE_SCORES = {'Prime' => 3, 'Choice' => 2, 'Select' => 1}

  def <=>(other)
    if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
      return 0  
    else
      return 1
    end
  end
end

prime = Steak.new
prime.grade = 'Prime'

choise = Steak.new
choise.grade = 'Choice'

select = Steak.new
select.grade = 'Select'

puts "prime > choise: #{prime > choise}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choise: #{select >= choise}"
print "choise.between?(select, prime): "
puts choise.between?(select, prime)
