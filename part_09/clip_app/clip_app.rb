#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative 'lib/video'
require_relative 'lib/song'
require_relative 'lib/photo'

video = Video.new
video.add_comment('Cool slow motion effect!')
video.add_comment('Weird ending.')
p video.comments
video.play
puts
song = Song.new
song.add_comment('Awesome beat.')
p song.comments
song.play
puts
photo = Photo.new
photo.add_comment('Beautiful colors.')
p photo.comments
photo.show
