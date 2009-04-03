class RemoveColumnRamoCostumer < ActiveRecord::Migration
  def self.up
	remove_column :costumers, :ramo_atividade
  end

  def self.down
  end
end
