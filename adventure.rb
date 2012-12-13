require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'

page = Page.create(starting_point: true, 
                          content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?",
                          preview: "30 gold pieces would make you rich... But that bacon sandwich smells awfully good!")
Page.create(conclusion: true, 
             parent_id: page.id, 
               content: "You've won 30 pieces of gold!",
               preview: "Some preview for option_a goes here...")
Page.create(conclusion: true, 
             parent_id: page.id, 
               content: "You ate the bacon sandwich you greedy buggar!",
               preview: "Some preview for option_b goes here...")

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "A - #{book.current_page.options.first.preview}"
	puts "B - #{book.current_page.options.last.preview}"
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
