class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :title
      t.text :text
      t.string :source

      t.timestamps
    end
  end

  def self.down
    drop_table :contents
  end
end
