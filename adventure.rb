require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'models/page'
require_relative 'models/book'
require_relative 'db/seed' # lesson learned: this has to be placed below the page/book models. 

page = Page.all.first # shouldn't I be able to leave this out and let the page variable be set in the seed file?
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
    puts "Three letters enscribed on an ancient tombstone... 'PHP'. Lightning strikes."
  end
end

puts "------------------------------------------"
puts "|                                        |"
puts "|                                        |"
puts "|          ADVENTURE COMPLETE            |"
puts "|                                        |"
puts "|                                        |"
puts "------------------------------------------"

if book.current_page.winner?
  puts "You WON!"
else
  puts "You DEAD!"
end

