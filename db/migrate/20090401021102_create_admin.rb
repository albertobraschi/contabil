class CreateAdmin < ActiveRecord::Migration
  def self.up
	User.delete_all
      
    User.create(
		:name => 'admin', 
		:hashed_password => '997b85a31eb77db642ad850d988bd5f16a99b6df',  
		:salt => '369067300.108187438527712', 
		:user => 'demo', 
		:email => 'mail@example.com')
	
  end

  def self.down
	User.delete_all
  end
end
