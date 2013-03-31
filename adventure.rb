require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'

page = Page.create(starting_point: true, preview: "Welcome, adventurer.", 
	content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, parent_id: page.id, preview: "Go into the forest", 
	content: "You are attacked by a hungry bear who wants your sandwich.  You lose.")
Page.create(conclusion: true, parent_id: page.id, preview: "Walk down the road",
	content: "You made it back to the inn safely.  You win 100 gold pieces!!")

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

puts book.current_page.conclusion
puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"


puts "hope you won!"
