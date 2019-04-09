#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'yaml/store'

class Movie
  attr_accessor :title, :director, :year, :id
end

store = YAML::Store.new('movies.yml')
store.transaction do
  arr = store.roots.map { |key| store[key] }
  p arr.class
  arr.each {|obj| p obj}
end
