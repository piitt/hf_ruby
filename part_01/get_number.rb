#!/usr/bin/env ruby
# encoding: UTF-8

ii_number = rand(100) + 1
count_step = 0
game_over = false

puts "Добро пожаловать в игру 'Угадай число'"
print "Представтесь пожалуйста: "
user_name = gets.chomp
puts "Приятно познакомиться #{user_name}!"
puts 'Я загадал число от 1 до 100, отгдайте его'
until (count_step == 10 || game_over)
  puts "У вас есть #{10 - count_step} попыток"
  print 'Пожалуйста введите число: '
  user_answer = gets.to_i
  count_step += 1
  if user_answer == ii_number
    puts "Поздравляю #{user_name} ВЫ ВЫИГРАЛИ!!!"
    puts "Вы угадали число за #{count_step} попыток"
    game_over = true
  else
    if user_answer < ii_number
      puts 'Ваше число МЕНЬШЕ'
    else
      puts 'Ваше число БОЛЬШЕ'
    end
  end
end

unless game_over
  puts "ВЫ ПРОИГРАЛИ! Я загадал #{ii_number}"
end
