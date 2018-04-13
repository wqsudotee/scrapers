#chchnews.rb
#! /usr/bin/env ruby

require 'httparty'
require 'nokogiri'
puts "\n"

page = Nokogiri::HTML(HTTParty.get('https://www.stuff.co.nz/the-press/'))
popular = page.css('.sics-component__most-popular__list').css('li')
popular.each do |item|
  puts item.inner_text
  puts item.to_s.split('"')[5]
  puts "\n"
end
