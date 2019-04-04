#!/usr/bin/env ruby
# encoding: UTF-8
#
def drive(destination)
  if destination == 'Hawaii'
    raise "You can't drive to Hawaii!"
  end
end

begin
  drive('Hawaii')
rescue => error
  puts error.message
end
