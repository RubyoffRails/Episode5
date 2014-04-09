require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require_relative "db/seed"

book = Book.new(Page.starting_point)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "  - [#{book.current_page.options.first.content}]"
	puts "  - [#{book.current_page.options.last.content}]"
	puts "What do you want to do? Enter A or B"

	book.input( gets )

end
puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"


puts book.current_page.content

puts "Hope you won!"
