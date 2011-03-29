class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :name
      t.string :caption
      t.string :src
      t.integer :car_id

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
