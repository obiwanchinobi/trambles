# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Import Buses
FasterCSV.foreach("#{RAILS_ROOT}/db/import/Buses.csv", :headers => true) do |row|
  Bus.create(:company => row['name'], :phone => row['phone'], :web => row['web'])
end

# Import Taxis
FasterCSV.foreach("#{RAILS_ROOT}/db/import/Taxis.csv", :headers => true) do |row|
  Taxi.create(:company => row['Name'], :phone => row['Phone'], :web => row['Web'])
end

# Import Train lines
FasterCSV.foreach("#{RAILS_ROOT}/db/import/Train.csv", :headers => true) do |row|
  train_line = TrainLine.find_by_name(row['line'])
  if train_line.nil?
    train_line = TrainLine.create(:name => row['line'])
  end
  
  Direction.create(:name => row['direction'], :transport_line => train_line)
end

# Import Ferries
FasterCSV.foreach("#{RAILS_ROOT}/db/import/Ferries.csv", :headers => true) do |row|
  FerryLine.create(:name => row['name'])
end

# Import Train comments
FasterCSV.foreach("#{RAILS_ROOT}/db/import/Train-comments.csv", :headers => true) do |row|
  date = row['date'].split("/")
  time = row['time'].split(":")

  o = Comment.new
  o.category = "Train"
  o.type = row['type']
  o.train_line = TrainLine.find_by_name(row['train'])
  o.direction = Direction.find_by_name(row['direction'])
  o.ramble = row['ramble']
  o.author = row['author']
  o.created_at = Time.zone.local(date[2], date[1], date[0], time[0], time[1])
  o.save!
end

# Import Bus comments
FasterCSV.foreach("#{RAILS_ROOT}/db/import/Bus-comments.csv", :headers => true) do |row|
  date = row['date'].split("/")
  time = row['time'].split(":")

  o = Comment.new
  o.category = "Bus"
  o.transport = Transport.find_by_company(row['company'])
  o.type = row['type']
  o.vehicle_no = row['bus']
  o.short_description = row['direction']
  o.ramble = row['ramble']
  o.author = row['author']
  o.created_at = Time.zone.local(date[2], date[1], date[0], time[0], time[1])
  o.save!
end