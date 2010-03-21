class RefactorCommentFields < ActiveRecord::Migration
  def self.up
    rename_column :comments, :vehicle_driver_number, :vehicle_no
    rename_column :comments, :incident_info, :short_description
  end

  def self.down
    rename_column :comments, :vehicle_no, :vehicle_driver_number
    rename_column :comments, :short_description, :incident_info
  end
end
