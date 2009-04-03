class Catarc < ActiveRecord::Base

	has_many :archive
	
	validates_presence_of  :name
	
	validates_uniqueness_of :name


end


