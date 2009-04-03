class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :branch

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
