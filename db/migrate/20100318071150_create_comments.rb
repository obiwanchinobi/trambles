class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :type
      t.string :category
      t.text :ramble
      t.string :longitude
      t.string :latitude
      t.string :ip_address
      t.string :author
      t.string :vehicle_driver_number
      t.string :incident_info               # e.g. which way was the bus going?
      t.integer :taxi_company_id
      t.integer :train_line
      t.integer :train_direction

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
