class AddColumnUserCostumer < ActiveRecord::Migration
  def self.up
	add_column :costumers, :user_id, :integer
  end

  def self.down
	remove_column :costumers, :user_id, :integer
  end
end
