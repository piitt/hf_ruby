#!/usr/bin/env ruby
# encoding: UTF-8
#
class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ''
      raise "Name can't be blank!"
    end
    @name = name
  end

    def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
    @name = name
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
  def initialize(name='Anonymous', salary=0.0)
    @name = name
    @salary = salary
  end
end

# amy = Employee.new
# amy.name = 'Amy Blake'
# amy.salary = 50_000
# amy.print_pay_stub

# kara = Employee.new
# kara.name = ''

# ben = Employee.new
# ben.salary = -246



# employee = Employee.new('Amy Blake', 50_000)
Employee.new('Jane Doe', 50_000).print_pay_stub
Employee.new('Jane Doe').print_pay_stub
Employee.new.print_pay_stub
# employee.name = 'Jane Doe'
# employee.salary = 50_000
# employee.print_pay_stub
