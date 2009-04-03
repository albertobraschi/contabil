class RemoveColumnCostumerNotice < ActiveRecord::Migration
  def self.up
	remove_column :notices, :costumer
  end

  def self.down
  end
end
