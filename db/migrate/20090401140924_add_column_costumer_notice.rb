class AddColumnCostumerNotice < ActiveRecord::Migration
  def self.up
	add_column :notices, :costumer_id, :integer
  end

  def self.down
	remove_column :notices, :costumer_id, :integer
  end
end
