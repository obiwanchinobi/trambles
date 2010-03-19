class CreateDirections < ActiveRecord::Migration
  def self.up
    create_table :directions do |t|
      t.string :name
      t.belongs_to :transport_line

      t.timestamps
    end
  end

  def self.down
    drop_table :directions
  end
end
