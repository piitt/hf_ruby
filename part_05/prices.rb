#!/usr/bin/env ruby
# encoding: UTF-8
#

def total(prices)
  amount = 0
  prices.each {|price| amount += price}
  amount
end

def refund(prices)
  amount = 0
  prices.each {|price| amount -= price}
  amount
end

def show_discounts(prices)
  prices.each do |price|
  amount_off = price / 3.0
  puts format("Your discount: $%.2f", amount_off)
  end
end

prices = [3.99, 25.00, 8.99]
puts format('%.2f', prices.inject(:+))
puts format('%.2f', prices.inject(0, :-))
puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))
show_discounts(prices)
