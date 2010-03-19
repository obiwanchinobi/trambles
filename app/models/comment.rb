class Comment < ActiveRecord::Base
  CATEGORIES = ['Bus', 'Drivers', 'Ferry', 'Train', 'Taxi']
  BUS = 'Bus'
  DRIVER = 'Drivers'
  FERRY = 'Ferry'
  TRAIN = 'Train'
  TAXI = 'Taxi'
  
  validates_presence_of :author, :ramble
end