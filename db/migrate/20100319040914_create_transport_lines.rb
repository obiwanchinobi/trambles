class CreateTransportLines < ActiveRecord::Migration
  def self.up
    create_table :transport_lines do |t|
      t.string :type
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :transport_lines
  end
end
