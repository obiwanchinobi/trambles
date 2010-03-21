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
    if category == BUS
      errors.add_to_base("Bus Company required") if transport.blank?
      errors.add_to_base("Bus Number required") if vehicle_no.blank?
    elsif category == FERRY
      errors.add(:ferry_line, "required") if ferry_line.blank?
    elsif category == TRAIN
      errors.add(:train_line, "required") if train_line.blank?
      errors.add(:direction, "required") if train_line.present? && direction.blank?
    end
  end
end
