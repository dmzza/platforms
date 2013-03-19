class Track < ActiveRecord::Base
  belongs_to :lesser_platform
  belongs_to :greater_platform
  belongs_to :route
  attr_accessible :duration
end
