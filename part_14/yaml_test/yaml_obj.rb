#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'yaml'

class Movie
  attr_accessor :title, :director, :year
end

movie = Movie.new
movie.title = 'Fight Club'
movie.director = 'David Fincher'
movie.year = 1999
puts YAML.dump(movie)
puts
movie_yaml = YAML.dump(movie)
copy = YAML.load(movie_yaml)
puts copy.title, copy.director, copy.year
