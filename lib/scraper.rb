require 'pry'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://flatironschool.com/")) # brings in HTML from flatiron

course_titles = doc.css(".title-oE5vT4")  # links section to course_titles
course_titles.each do |course|  # loops through each one and puts the text in each
  puts course.text
end

# testing how to find different information about HTML elements
# puts course_titles[0].attributes



