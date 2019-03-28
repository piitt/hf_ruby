#!/usr/bin/env ruby
# encoding: UTF-8
#
lines = []
File.open('data/reviews.txt', 'r') do |file|
  lines = file.readlines
end

relevant_lines = lines.find_all {|line| line.include?('Truncated')}
p relevant_lines
