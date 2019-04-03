#!/usr/bin/env ruby
# encoding: UTF-8
#
class WordSplitter
  include Enumerable
  attr_accessor :string

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
