class Page < ActiveRecord::Base

	def self.starting_point
		Page.where(starting_point: true).first
	end

	def options
		#Page.where(:parent_id => id).limit(2)
		#[ Page.where(:id => option_a_id).limit(1), Page.where(:id => option_b_id).limit(1)]
		Page.find(option_a_id, option_b_id)
	end

end
