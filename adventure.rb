require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require_relative 'db/seed'


page = Page.where(starting_point: true).first

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "  - [#{book.current_page.option_a_preview}]"
	puts "  - [#{book.current_page.option_b_preview}]"
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

if book.winner?
  puts "you won"
else
  puts "LUL YOU LOST!!!!"
end