class AddColumnBranchCostumer < ActiveRecord::Migration
  def self.up
	add_column :costumers, :branch_id, :integer
  end

  def self.down
	remove_column :costumers, :branch_id, :integer
  end
end
