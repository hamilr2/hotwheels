class AddUserColumnToCar < ActiveRecord::Migration
  def self.up
    add_column :cars, :user_id, :int
  end

  def self.down
    remove_column :cars, :user_id
  end
end
