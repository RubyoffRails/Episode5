require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'

page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, parent_id: page.id, preview: "Go into the forest", content: "You find that the forest is endless maze of confusing paths. You spend the rest of your days trying to find a way out. RIP")
Page.create(conclusion: true, parent_id: page.id, preview: "Walk down the road", content: "As you walk, you notice something glimmer on the horizon. You approach and find a pile of gold pieces the size of your parent's house. You can finally move out. YOU WIN!!!")

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "A - [#{book.current_page.options.first.preview}]"
	puts "B - [#{book.current_page.options.last.preview}]"
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
