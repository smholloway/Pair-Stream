class AddNameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :first, :string
    add_column :users, :last, :string
  end

  def self.down
    remove_column :users, :last
    remove_column :users, :first
  end
end
