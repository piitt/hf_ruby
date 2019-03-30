#!/usr/bin/env ruby
# encoding: UTF-8
#
class Track
  attr_accessor :author_text, :title, :year, :album, :performer, :author_music, :style_music
  def initialize(author_text: nil, title:, year: nil, album: nil, performer:, author_music: nil, style_music: nil)
    self.author_text = author_text
    self.title = title
    self.year = year
    self.album = album
    self.performer = performer
    self.author_music = author_music
    self.style_music = style_music
  end
  def print_info_track
    puts "Название песни: #{title}"
    puts "Исполнитель: #{performer}"
    puts "Год создания: #{year || 'неизвестно'}"
    puts "Автор текста: #{author_text || 'неизвестен'}"
    puts "Композитор: #{author_music || 'неизвестен'}"
    puts "Альбом: #{album}"
    puts "Стиль музыки: #{style_music}"
  end
end

track = Track.new(
  title: 'Журавли',
  performer: 'Марк Бернес',
  year: '1944',
  author_text: 'Гамзатов Р.',
  author_music: 'Френкель Я',
  album: 'Военные песни',
  style_music: 'Военные, патриотические'
  )
track.print_info_track
