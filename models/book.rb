class Book

	attr_reader :current_page

	def initialize(starting_page)
		@current_page = starting_page
	end

	def input(input_string)
		if input_string.chomp == "A"
			@current_page = Page.where(:id => current_page.option_a).first
		elsif input_string.chomp == "B"
			@current_page = Page.where(:id => current_page.option_b).first
		end
	end

	def complete_game?
		@current_page.conclusion
	end

end
