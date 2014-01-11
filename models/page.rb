class Page < ActiveRecord::Base

	def self.starting_point
		Page.where(starting_point: true).first
	end
end
