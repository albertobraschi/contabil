class CreateCostumers < ActiveRecord::Migration
  def self.up
    create_table :costumers do |t|
      t.string :razao_social
      t.string :nome_fantasia
      t.string :cnpj
      t.string :inscricao_estadual
      t.string :inscricao_municipal
      t.string :responsavel
      t.string :cep
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefone1
      t.string :telefone2
      t.string :telefone3
      t.string :email
      t.string :ramo_atividade

      t.timestamps
    end
  end

  def self.down
    drop_table :costumers
  end
end
