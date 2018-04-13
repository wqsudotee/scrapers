#weather.rb
#! /usr/bin/env ruby

require 'httparty'
require 'nokogiri'
puts "\n"

page = Nokogiri::HTML(HTTParty.get('https://www.tvnz.co.nz/one-news/weather-forecast.christchurch.html'))
max = page.css('.max')[0].inner_text
min = page.css('.min')[0].inner_text
current = page.css('.current')[0].inner_text
description = page.css('.situationDescription')[0].inner_text

puts "The current temperature is: " + current + " degrees, with a max of: " + max + " degrees and a low of: " + min + "."
puts description
