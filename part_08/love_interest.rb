#!/usr/bin/env ruby
# encoding: UTF-8
#
class LoveInterest
  def request_date
    if @busy
      puts 'Прости, я занята'
    else
      puts 'Конечно, давай'
      @busy = true
    end
  end
end

betty = LoveInterest.new
candace = LoveInterest.new
betty.request_date
candace.request_date

p betty.object_id
p candace.object_id
