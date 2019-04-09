#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'yaml/store'

class Movie
  attr_accessor :title, :director, :year
end

store = YAML::Store.new('movies.yml')
keys = []
store.transaction do
  keys =  store.roots
end

keys.each { |key| puts key.year }
