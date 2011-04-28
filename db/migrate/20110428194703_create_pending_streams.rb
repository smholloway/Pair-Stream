class CreatePendingStreams < ActiveRecord::Migration
  def self.up
    create_table :pending_streams do |t|
      t.string :requestor
      t.string :requestee

      t.timestamps
    end
  end

  def self.down
    drop_table :pending_streams
  end
end
