#!/usr/bin/env ruby
# encoding: UTF-8
#
def find_adjective(string)
  words = string.split(' ')
  index = words.find_index('is')
  words[index + 1]
end

lines = []
File.open('data/reviews.txt', 'r') do |file|
  lines = file.readlines
end

relevant_lines = lines.find_all {|line| line.include?('Truncated')}
rewiev = relevant_lines.reject {|line| line.include?('--')}

adjectives = rewiev.map do |string|
  "'#{find_adjective(string).capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives