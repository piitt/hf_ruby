#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative 'clip'
require_relative 'accept_comments'

class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end
