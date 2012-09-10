class Page < ActiveRecord::Base

	def self.starting_point
		Page.where(starting_point: true).first
	end

  def self.winners
    Page.where(winner: true)
  end

	def options
		Page.find([option_id_a, option_id_b])
	end

end
