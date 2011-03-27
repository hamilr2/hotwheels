class CreateCastings < ActiveRecord::Migration
  def self.up
    create_table :castings do |t|
      t.string :name
      t.integer :copyright
      t.integer :manufacturer_id
      t.string :scale

      t.timestamps
    end
  end

  def self.down
    drop_table :castings
  end
end
