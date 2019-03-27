#!/usr/bin/env ruby
# encoding: UTF-8
#

def total(prices)
  amount = 0
  i = 0
  while i < prices.length
    amount += prices[i]
    i += 1
  end
  amount
end

def refund(prices)
  amount = 0
  i = 0
  while i < prices.length
    amount -= prices[i]
    i += 1
  end
  amount
end

def show_discounts(prices)
  i = 0
  while i < prices.length
    amount_off = prices[i] / 3.0
    puts format("Your discount: $%.2f", amount_off)
    i += 1
  end
  amount_off
end

prices = [3.99, 25.00, 8.99]
puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))
show_discounts(prices)
