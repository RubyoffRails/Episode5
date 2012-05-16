require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'

page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, 
            parent_id: page.id, 
            content: "Go into the forest",
            preview: "It's dark... you have half a bacon sandwich left... and you need to pee, but you keep only to discover.")

Page.create(conclusion: true,
            parent_id: page.id,
            content: "Walk down the road",
            preview: "It's cold... you have no sandwich left... but you see a light and discover...")

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "  - [#{book.current_page.options.first.content}]"
	puts "  - [#{book.current_page.options.last.content}]"
	puts "What do you want to do? Enter A or B"
	
  input = gets.chomp.upcase
	book.input( input )
  
 
  puts "You're about to #{book.current_page.content}"
  puts "Suddenly you see a PREVIEW of you life flash before you.\n#{book.current_page.preview}." 
           

  if input == "B"
    puts "A magnificient magic Ruby." 
  else 
    puts "Three letters enscribed on an ancient tombstone... 'P H P'. Lightning strikes."
  end

end

puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"


puts book.current_page.content	


puts "hope you won!"
