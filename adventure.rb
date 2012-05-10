require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require_relative 'db/seed'

page = Page.where(:starting_point => true).first
book = Book.new(page)

until book.complete_game? do
	puts book.current_page.outcome
	puts "your options: "
	puts "  - [#{book.current_page.a_tease}]"
	puts "  - [#{book.current_page.b_tease}]"
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


puts book.current_page.outcome
