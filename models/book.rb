class Book

	attr_reader :current_page
  attr_accessor :ruby, :php

	def initialize(starting_page)
		@current_page = starting_page
	end

	def answer(input)
		if input == "A"	
      @current_page = current_page.options.first
      @current_page.ruby = true
    else 
      @current_page = current_page.options.last
      @current_page.php = true
		end
	end

  def answer_two(input)
    if input == "Y"
      current_page.winner = true
    else
      current_page.winner = false 
    end
    current_page.conclusion = true
  end

	def complete_game?
		current_page.conclusion?
	end

  def winner?
    current_page.winner == true
  end
end
