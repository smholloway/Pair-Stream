class CreateStreamsUsersJoinTable < ActiveRecord::Migration
  def self.up
    create_table :streams_users, :id => false do |t|
      t.integer :stream_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :streams_users
  end
end
