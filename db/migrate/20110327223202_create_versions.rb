class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.string :main_color
      t.string :base_color
      t.integer :wheel_id
      t.string :markings
      t.string :color2
      t.integer :year
      t.string :series
      t.string :country
      t.integer :casting_id

      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end
