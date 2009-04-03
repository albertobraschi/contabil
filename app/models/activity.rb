class Activity < ActiveRecord::Base

	belongs_to :costumer
	
	validates_presence_of  :branch
	
	validates_uniqueness_of :branch

end
