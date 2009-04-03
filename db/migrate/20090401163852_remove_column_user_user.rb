class RemoveColumnUserUser < ActiveRecord::Migration
  def self.up
	remove_column :users, :user
  end

  def self.down
	remove_column :users, :user
  end
end
