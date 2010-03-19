class TransportLine < ActiveRecord::Base
  has_many :comments
  has_many :directions, :order => :name
end
