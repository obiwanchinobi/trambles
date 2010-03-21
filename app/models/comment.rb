class Comment < ActiveRecord::Base
  CATEGORIES = ['Bus', 'Drivers', 'Ferry', 'Train', 'Transport']
  BUS = 'Bus'
  DRIVER = 'Drivers'
  FERRY = 'Ferry'
  TRAIN = 'Train'
  TAXI = 'Transport'

  belongs_to :transport
  belongs_to :train_line, :foreign_key => 'transport_line_id'
  belongs_to :ferry_line, :foreign_key => 'transport_line_id'
  belongs_to :direction
  
  validates_presence_of :ramble
  
  validate  :ramble_fields
  
  def get_author
    self.author || 'Anonymous'
  end
  
  def ramble_fields
    
  end
end
