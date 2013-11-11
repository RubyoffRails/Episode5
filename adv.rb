require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"
#require_relative 'models/page'
#require_relative 'models/book'


page =  Page.create(starting_point: true, preview: 'Adventure road', content: "you wake up on a road. 
  It's foggy and dampy. In your bag is 30 gold pieces and bacon sandwich. 
  Which do you choose?")

Page.create(conclusion: true, parent_id: page.id, preview: "Go into the Forest", content: "Omg...you just won 30 bags of gold: WINNER")
Page.create(conclusion: true, parent_id: page.id, preview: "Sail across the River", content: "Shat...you just got ripped to pieces by a clan of hungry paranas. LOSER")



book = Book.new(page)

until book.complete_game? do 
  puts book.current_page.content
  puts "your options: "
  puts " - [#{book.current_page.options.first.preview}]"
  puts " - [#{book.current_page.options.last.preview}]"
  puts "What do you want to do? Enter A or B"

  book.input( gets )
end

puts book.current_page.content

puts book.current_page.conclusion
