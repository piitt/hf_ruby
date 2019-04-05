#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative 'lib/list_with_commas'

three_subjects = ListWithCommas.new
three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']
puts "A photo of #{three_subjects.join}"

two_subjects = ListWithCommas.new
two_subjects.items = ['my parents', 'a rodeo clown']
puts "A photo of #{two_subjects.join}"

one_subjects = ListWithCommas.new
one_subjects.items = ['a rodeo clown']
puts "A photo of #{one_subjects.join}"
