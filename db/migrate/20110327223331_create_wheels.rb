class CreateWheels < ActiveRecord::Migration
  def self.up
    create_table :wheels do |t|
      t.integer :wheel_style_id
      t.string :color
      t.string :color2

      t.timestamps
    end
  end

  def self.down
    drop_table :wheels
  end
end
