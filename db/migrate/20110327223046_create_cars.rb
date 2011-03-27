class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.date :date_acquired
      t.integer :version_id
      t.string :desc
      t.string :base_code
      t.string :variation

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
