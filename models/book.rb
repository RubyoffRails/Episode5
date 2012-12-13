class Book

	attr_reader :current_page

	def initialize(starting_page)
		@current_page = starting_page
	end

	def input(input_string)
		if input_string.chomp.capitalize == "A"	
			@current_page = Page.where(id: current_page.options.first).first
		elsif input_string.chomp.capitalize == "B"
			@current_page = Page.where(id: current_page.options.last).first
		end
	end

	def complete_game?
		current_page.conclusion?
	end
end
