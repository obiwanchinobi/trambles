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
