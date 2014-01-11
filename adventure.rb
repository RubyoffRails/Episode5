require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require_relative 'db/seed'

book = Book.new(Page.where(starting_point: true).first)

until book.complete_game? do
	puts "\n" + book.current_page.content
	puts "\nyour options: "
	puts "  - [#{Page.find(book.current_page.option_ids.first).preview}]"
	puts "  - [#{Page.find(book.current_page.option_ids.last).preview}]"
	puts "What do you want to do? Enter A or B"
	
	book.input( gets )
   

end

puts "\n" + book.current_page.content 


puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"



puts "hope you won!"
