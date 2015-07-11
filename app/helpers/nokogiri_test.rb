require 'rubygems'
require 'nokogiri'
require 'open-uri'

def generate(url)

doc = Nokogiri::HTML(open(url))
puts doc.at_css("p").text

end