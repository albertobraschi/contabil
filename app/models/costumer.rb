class Costumer < ActiveRecord::Base

	has_many :notice
	has_many :activity
	belongs_to :user
	
	validates_presence_of  :razao_social , :nome_fantasia, :cnpj, :responsavel , :cep , :endereco , :numero , :bairro , :cidade , :estado , :telefone1  , :branch_id 
	
	validates_uniqueness_of :razao_social , :nome_fantasia, :cnpj
		
		
end
