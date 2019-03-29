#!/usr/bin/env ruby
# encoding: UTF-8
#
votes = Hash.new 0
lines = []
File.open('data/votes.txt', 'r') { |file| lines = file.readlines }
lines.each do |line|
  name = line.chomp.upcase
  votes[name] += 1
end
votes.each do |name, count|
  puts "#{name}: #{count}"
end
