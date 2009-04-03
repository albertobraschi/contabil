class Newness < ActiveRecord::Base


  def to_param
    require 'iconv'
    texto = Iconv.iconv("ASCII//IGNORE//TRANSLIT", "UTF-8", title).join.gsub(/[\s]+/i, 
'_').gsub(/[^a-z0-9\_]+/i, '').downcase
    "#{id}-#{texto}"
  end
  
end
