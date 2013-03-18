class Station < ActiveRecord::Base
  attr_accessible :name

  has_many :platforms
  has_many :routes, :through => :platforms
end
