class Track < ActiveRecord::Base
  attr_accessible :direction

  has_many :platforms
  has_many :stations, :through => :platforms
end
