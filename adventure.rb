require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require "./db/seed"

page = Page.starting_point
book = Book.new(page)

until book.complete_game? do
  puts "------------------------------------------"
	puts book.current_page.content
	puts "your options: "
	puts "A  - [#{book.current_page.options.first.preview}]"
	puts "B  - [#{book.current_page.options.last.preview}]"
	puts "What do you want to do? Enter A or B"

	book.input( gets )
  puts "------------------------------------------"
  puts book.current_page.outcome
  puts "------------------------------------------"
end
puts book.current_page.content
puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"
