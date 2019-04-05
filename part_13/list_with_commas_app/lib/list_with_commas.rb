#!/usr/bin/env ruby
# encoding: UTF-8
#
class ListWithCommas
  attr_accessor :items
  def join
    return items[0] if items.length == 1
    return "#{items[0]} and #{items[1]}" if items.length == 2
    last_item = "and #{items.last}"
    other_items = items.slice(0, items.length - 1).join(', ')
    "#{other_items}, #{last_item}"
  end
end
