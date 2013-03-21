class Track < ActiveRecord::Base
  belongs_to :lesser_platform, :class_name => 'Platform'
  belongs_to :greater_platform, :class_name => 'Platform'
  belongs_to :route
  attr_accessible :duration, :route_id, :lesser_platform_id, :greater_platform_id
end
