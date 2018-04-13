#HN.rb
#! /usr/bin/env ruby

require 'httparty'
require 'nokogiri'
puts "\n"

page = Nokogiri::HTML(HTTParty.get('http://news.ycombinator.com'))
page.css('.title').css('.storylink').each do |item|
  puts item.inner_text + ": [" + item.to_s.split('"')[1] + "]"
end
