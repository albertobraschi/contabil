class CreateNewnesses < ActiveRecord::Migration
  def self.up
    create_table :newnesses do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :newnesses
  end
end
