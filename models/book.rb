class Book

	attr_reader  :current_page

	def initialize(starting_page)
		@current_page = starting_page
  end

  def input(input_string)
  	if input_string.chomp == "A"
  		@current_page = current_page.options.first

  	elsif input_string.chomp == "B"
  		@current_page = current_page.options.last
  	end
  end

  def complete_game?
  	current_page.conclusion?

  end
end