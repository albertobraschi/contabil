class Notice < ActiveRecord::Base

	belongs_to :costumer
	
	validates_presence_of     :title, :text, :costumer_id
	
	def to_param
    require 'iconv'
    texto = Iconv.iconv("ASCII//IGNORE//TRANSLIT", "UTF-8", title).join.gsub(/[\s]+/i, 
'_').gsub(/[^a-z0-9\_]+/i, '').downcase
    "#{id}-#{texto}"
  end
	
end
