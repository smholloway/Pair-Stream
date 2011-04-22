class CreateUsersStreamsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :users_streams, :id => false do |t|
      t.integer :user_id
      t.integer :stream_id
    end
  end

  def self.down
    drop_table :users_streams
  end
end
