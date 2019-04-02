#!/usr/bin/env ruby
# encoding: UTF-8
#
module Curious
  def investigate(thing)
    puts "Look at #{thing}"
  end
end

module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end

class Monkey
  include Curious
  include Clumsy
end

bubbless = Monkey.new
bubbless.investigate('vase')
bubbless.break('vase')
