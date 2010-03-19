class CreateTransports < ActiveRecord::Migration
  def self.up
    create_table :transports do |t|
      t.string :type
      t.string :company
      t.string :phone
      t.string :web

      t.timestamps
    end
  end

  def self.down
    drop_table :transports
  end
end
