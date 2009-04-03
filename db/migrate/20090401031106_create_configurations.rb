class CreateConfigurations < ActiveRecord::Migration
  def self.up
    create_table :configurations do |t|
      t.string :title
      t.string :email
      t.string :fone
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :configurations
  end
end
