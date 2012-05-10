require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'db/seed'
require_relative 'models/page'
require_relative 'models/book'

page = Page.where(:starting_point => true).first

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "  - [#{book.current_page.options.first.content}]"
	puts "  - [#{book.current_page.options.last.content}]"
	print "What do you want to do? Enter A or B: "

	book.input( gets.upcase.chomp )

end
puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"


puts book.current_page.content
