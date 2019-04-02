#!/usr/bin/env ruby
# encoding: UTF-8
#
module AcceptsComments
  def comments
    @comments ? @comments : @comments = []
  end

  def add_comment(comment)
    comments << comment
  end
  
end