class CreateWheelStyles < ActiveRecord::Migration
  def self.up
    create_table :wheel_styles do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :wheel_styles
  end
end
