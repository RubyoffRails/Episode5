require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'

page = Page.create(starting_point: true,
                   content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true,
            parent_id: page.id,
            preview: "Go into the forest",
            outcome: "You were methodically consumed by ZOMBIE DEER!!!",
            content: "As soon as you stepped off the road, darkness consumed you. You tripped, fell to the ground, and a hoard of zombie deer proceeded to gobble you up.")
Page.create(conclusion: true,
            parent_id: page.id,
            preview: "Walk down the road",
            outcome: "You found the circle of life (can be traded at Trapper's Den for 2 gold pieces)!",
            content: "Apparently, after receiving it from his father, Simba dropped the circle of life while chasing a zombie deer.")

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts "A  - [#{book.current_page.options.first.preview}]"
	puts "B  - [#{book.current_page.options.last.preview}]"
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

puts book.current_page.outcome
puts book.current_page.content
