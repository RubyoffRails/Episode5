class Page < ActiveRecord::Base

 
def self.starting_point
 Page.where(starting_point: true).first
end


  def options
    Page.where(:parent_id => id).limit(2)
  end

  def end_of_road?
    conclusion?
  end
end


