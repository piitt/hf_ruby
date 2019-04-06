#!/usr/bin/env ruby
# encoding: UTF-8
#
require 'sinatra'

get('/hello') do
  'Hello, web!'
end
