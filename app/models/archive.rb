class Archive < ActiveRecord::Base
	  
	belongs_to :cartac
	belongs_to :user
	
	has_attached_file :file,  
                    :path => ":rails_root/public/files/:id/:style_:basename.:extension",  
                    :url => "/files/:id/:style_:basename.:extension" 
	validates_attachment_presence :file, :message => "deve ser definido"    
	
	validates_presence_of  :costumer_id, :catarc_id
  

end
