#!/usr/bin/env ruby
# encoding: UTF-8
#
require_relative './employee'

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name='Anonymous', salary=0.0)
    super(name)
    self.salary = salary
  end

  def salary=(salary)
    raise "A salary of #{salary} isn't valid!" if salary < 0
    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
  
end