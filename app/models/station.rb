class Station < ActiveRecord::Base
  attr_accessible :name

  has_many :platforms
  has_many :tracks, :through => :platforms
end
