#!/usr/bin/env ruby
# encoding: UTF-8
#
class TestScoreError < StandardError
end

score = 52

begin
  if score > 60
    puts 'passing grade'
  else
    raise TestScoreError, 'Failling grade'
  end
rescue TestScoreError => error
  puts "Received #{error.message}. Taking make-up exam..."
  score = 63
  retry
end
