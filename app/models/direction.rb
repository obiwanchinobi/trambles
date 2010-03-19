class Direction < ActiveRecord::Base
  has_many :comments
  belongs_to :transport_line
end
