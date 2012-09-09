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
	puts "your options: "
	puts "  - [#{book.current_page.options.first.preview}]"
	puts "  - [#{book.current_page.options.last.preview}]"
	puts "What do you want to do? Enter A or B"
	
	book.input( gets )

end

puts book.current_page.content  

puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"

if book.current_page.winner
  puts "Congrats, you won! You get 30 gold."
else
  puts "Sorry, you lost! You were eaten by sharks... :("
end
