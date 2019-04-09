#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'sinatra'
require_relative 'lib/movie'
require_relative 'lib/movie_store'

store = MovieStore.new('data/movies.yml')

get('/') do
  'Hello, Movies APP'
end
get('/movies') do
  @movies = store.all
  erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do
  # "Received: #{params.inspect}"
  @movie = Movie.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
  store.save(@movie)
  redirect '/movies/new'
end

get('/movies/:id') do
  # "Received a request for movie ID: #{params['id']}"
  id = params['id'].to_i
  @movie = store.find(id)
  erb :show
end
