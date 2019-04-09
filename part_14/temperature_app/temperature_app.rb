#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'sinatra'

get('/') do
  erb :index
end

post('/convert') do
  fahrenheit = params['temperature'].to_f
  celsius = (fahrenheit - 32) / 1.8
  format("%0.1f degrees Fahrenheit is %0.1f degrees Celsius.", fahrenheit, celsius)
end
