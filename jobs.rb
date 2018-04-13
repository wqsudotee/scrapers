#jobs.rb
#! /usr/bin/env ruby

require 'httparty'
require 'nokogiri'
puts "\n"

page = Nokogiri::HTML(HTTParty.get('https://www.seek.co.nz/jobs-in-information-communication-technology/in-Christchurch?daterange=3'))
popular = page.css('article')
popular.each do |item|
  puts item.to_s.split('"')[1] + ": " + item.css('a')[1].inner_text
  puts "\n"
end