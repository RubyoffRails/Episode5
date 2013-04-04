require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require "./db/seed"

book = Book.new(Page.starting_point)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "  - [#{book.current_page.options.first.preview}]"
	puts "  - [#{book.current_page.options.last.preview}]"
	puts "What do you want to do? Enter A or B"
	
	book.input( gets.chomp().capitalize )

end
puts book.current_page.content	

puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"


puts "hope you won!"
