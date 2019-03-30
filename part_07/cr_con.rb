#!/usr/bin/env ruby
# encoding: UTF-8
#
def create(options={})
  puts "Creating #{options[:database]} for owner #{options[:user]}..."  
end

def connect(database:, host: 'localhost', port: 3306, user: 'root')
  puts "Connecting to #{database} on #{host} port #{port} as #{user}..."
end

# create(database: 'catalog', user: 'carl')
# create(user: 'carl')
# create
# connect(database: 'catalog')
# connect(database: 'catalog', password: '1234')
connect(user: 'carl')