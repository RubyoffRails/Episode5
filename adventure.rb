require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'

page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, parent_id: page.id, content: "Go into the forest", win: true)
Page.create(conclusion: true, parent_id: page.id, content: "Walk down the road")

book = Book.new(page)

until book.complete_game? do
	puts book.current_page.content
	puts "your options: "
	puts " Option A: [#{book.current_page.options.first.content}]"
	puts " Option B: [#{book.current_page.options.last.content}]"
	puts "What do you want to do? Enter A or B"
	
	book.input( gets )
  puts
  puts book.current_page.preview
  if book.current_page.win
    puts 'You Win! You find the Fountain of Youth!'
  else
    puts 'You Lose! You are robbed and killed by evil ninjas..'
  end
end

puts
puts " The End! "
