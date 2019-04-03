#!/usr/bin/env ruby
# encoding: UTF-8
#
# This class allows you to perform various
# operations on the words in a string
class WordSplitter
  include Enumerable

  # The string to split into words
  attr_accessor :string

  # Create a new instance with its string
  # attribute set to the given string
  def initialize(string)
    self.string = string
  end
  # Passes each word in the string to a block
  # one at a time
  def each
    string.split(' ').each do |word|
      yield(word)
    end
  end
end

splitter = WordSplitter.new
splitter.string = 'how do you do'

p splitter.find_all { |word| word.include?('d') }
p splitter.reject { |word| word.include?('d') }
p splitter.map { |word| word.reverse }

p splitter.any? { |word| word.include?('e') }
p splitter.count
p splitter.first
p splitter.sort
p splitter.find { |word| word.include?('do') }
p splitter.group_by { |word| word.include?('do') }
p splitter.max_by { |word| word.length }
p splitter.to_a
p splitter.map { |word| word.capitalize }
