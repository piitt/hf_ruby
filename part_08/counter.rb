#!/usr/bin/env ruby
# encoding: UTF-8
#
counter = Hash.new(0)
letters = ['a','b','c','b','a','c','d','a','c','a','a','b','c']
letters.each do |letter|
  counter[letter] += 1
end

puts counter.default
counter.each do |key, value|
  puts "#{key}: #{value}"
end
