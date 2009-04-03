class AddDataConfigurations < ActiveRecord::Migration
  def self.up
    Configuration.delete_all
	
	Configuration.create(
		:title => 'Escritorio de Contabilidade',
		:email => 'mail@example.com',
		:fone => '[00] 3333-3333',
		:text => 'Seja bem-vindo!')
	
  end

  def self.down
	Configuration.delete_all
  end
end
