#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative 'lib/oven_off_error'
require_relative 'lib/oven_empty_error'

class SmallOven
  attr_accessor :contents

  def turn_on
    puts 'Turning oven ON.'
    @state = 'on'
  end

  def turn_off
    puts 'Turning oven OFF.'
    @state = 'off'
  end

  def bake
    unless @state == 'on'
      raise OvenOffError, 'You need to turn the oven on first!'
    end
    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!"
    end
    "golden-brown #{contents}"
  end
end

# diner = ['turkey', 'casserole', 'pie']
diner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_off
diner.each do |item|
  begin
    oven.contents = item
    puts "Serving #{oven.bake}"
  rescue OvenEmptyError => error
    puts "Error: #{error.message}"
  rescue OvenOffError => error
    oven.turn_on
    retry
  ensure
    oven.turn_off
  end
end
