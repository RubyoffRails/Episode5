require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
require_relative 'db/seed'
require_relative 'models/page'
require_relative 'models/book'

page = Page.where(:starting_point => true).first
book = Book.new(page)
result = false

until book.complete_game? do
	puts book.current_page.content
	puts "[A] #{book.current_page.preview_a}"
	puts "[B] #{book.current_page.preview_b}"
	puts "What do you want to do? Enter A or B"
	
	book.input(gets)
  puts "\n\n#{book.current_page.content} \n\nAdventure complete. You #{book.current_page.winner? ? 'Won!' : 'Lost.'}\n\n" if book.complete_game? 
end



