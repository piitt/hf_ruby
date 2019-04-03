#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative 'accept_comments'

class Photo
  include AcceptsComments
  def initialize
    @format = 'JPEG'
  end
  
  def show
    puts "Displaying #{object_id}"
  end
end