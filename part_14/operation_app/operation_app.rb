#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'sinatra'

get('/addition') do
  @first = 3
  @second = 5
  @result = @first + @second
  erb :addition
end

get('/multiplication') do
  @first = 2
  @second = 6
  @result = @first * @second
  erb :multiplication
end
