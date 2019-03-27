#!/usr/bin/env ruby
# encoding: UTF-8
#
Dir['lib/*.rb'].each { |file| require_relative file }

# solaried_employee = SalariedEmployee.new('Jane Doe', 50_000)
# solaried_employee.name = 'Jane Doe'
# solaried_employee.salary = 50_000
# solaried_employee.print_pay_stub

# hourly_employe = HourlyEmployee.new('John Smith', 14.97, 30)
# hourly_employe.name = 'John Smith'
# hourly_employe.hourly_wage = 14.97
# hourly_employe.hours_per_week = 30
# hourly_employe.print_pay_stub

angela = HourlyEmployee.security_guard('Angela Matthews')
edwin = HourlyEmployee.janitor('Edwin Burgess')
ivan = HourlyEmployee.cashier('Ivan Stokes')

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub
