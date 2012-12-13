class Page < ActiveRecord::Base

	def self.starting_point
		Page.where(starting_point: true).first
	end

	def options
		options = Page.find([option_a_id, option_b_id])
    option_ids = options.map { |o| o.id }
	end
end
