class Comment < ActiveRecord::Base
  CATEGORIES = ['Bus', 'Drivers', 'Ferry', 'Train', 'Transport']
  BUS = 'Bus'
  DRIVER = 'Drivers'
  FERRY = 'Ferry'
  TRAIN = 'Train'
  TAXI = 'Transport'

  belongs_to :transport
  
  validates_presence_of :author, :ramble
end
