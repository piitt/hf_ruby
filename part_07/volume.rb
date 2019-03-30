#!/usr/bin/env ruby
# encoding: UTF-8
#
def volume(options)
  result = options[:width] * options[:height] * options[:depth]
  puts "Volume is #{result}"
end
volume(width: 10, height: 5, depth: 2.5)
