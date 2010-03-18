class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :type
      t.string :category
      t.string :longitude
      t.string :latitude
      t.string :ip_address

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
