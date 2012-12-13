class Page < ActiveRecord::Base

	def self.starting_point
		Page.where(starting_point: true).first
	end

	def option_a
		Page.where(id: option_a_id).first
	end

	def option_b
		Page.where(id: option_b_id).first
	end

end
