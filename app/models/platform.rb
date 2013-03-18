class Platform < ActiveRecord::Base
	attr_accessible :heading, :station_id, :northeast_route_id, :southwest_route_id

  belongs_to :station
  belongs_to :northeast_route, :class_name => "Route"
  belongs_to :southwest_route, :class_name => "Route"
end
