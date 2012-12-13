require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require_relative 'db/seed'

page = Page.starting_point
book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
  option_a = Page.find(book.current_page.options.first)
  option_b =  Page.find(book.current_page.options.last)

	puts "Your options: "
	puts "A - #{option_a.preview}"
	puts "B - #{option_b.preview}"
	puts "What do you want to do? Enter A or B"
	
	book.input( gets )

end

puts
puts book.current_page.content	
puts

message = book.current_page.winner ? "YOU WIN" : "YOU LOSE"

puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "                #{message}                "
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"
