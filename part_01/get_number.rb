#!/usr/bin/env ruby
# encoding: UTF-8

machine_number = rand(100) + 1
count_step = 0
game_status = true

puts "Добро пожаловать в игру 'Угадай число'"
print "Представтесь пожалуйста: "
user_name = gets.chomp
puts "Приятно познакомиться #{user_name}!"
puts 'Я загадал число от 1 до 100, отгдайте его'
while (count_step != 10 && game_status)
  puts "У вас есть #{10 - count_step} попыток"
  print 'Пожалуйста введите число: '
  user_answer = gets.to_i
  count_step += 1
  if user_answer == machine_number
    puts "Поздравляю #{user_name} ВЫ ВЫИГРАЛИ!!!"
    puts "Вы угадали число за #{count_step} попыток"
    game_status = false
  else
    if user_answer < machine_number
      puts 'Ваше число МЕНЬШЕ'
    else
      puts 'Ваше число БОЛЬШЕ'
    end
  end
end

if game_status  then puts "ВЫ ПРОИГРАЛИ! Я загадал #{machine_number}" end
