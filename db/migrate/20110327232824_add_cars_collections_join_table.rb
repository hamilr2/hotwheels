class AddCarsCollectionsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :cars_collections, :id => false do |t|
      t.integer :car_id
      t.integer :collection_id
    end
  end

  def self.down
    drop_table :cars_collections
  end
end
