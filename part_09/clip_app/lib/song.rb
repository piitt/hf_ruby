#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative 'clip'
require_relative 'accept_comments'

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end
