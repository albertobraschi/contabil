class CreateCatarcs < ActiveRecord::Migration
  def self.up
    create_table :catarcs do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :catarcs
  end
end
