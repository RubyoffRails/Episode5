require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"
#require_relative 'models/page'
#require_relative 'models/book'



book = Book.new(Page.starting_point)



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
