class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :uri
      t.integer :stream_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
