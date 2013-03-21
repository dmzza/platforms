class Platform < ActiveRecord::Base
	attr_accessible :heading, :station_id, :northeast_route_id, :southwest_route_id

  belongs_to :station
  has_many :tracks
  belongs_to :northeast_route, :class_name => "Route"
  belongs_to :southwest_route, :class_name => "Route"

  def name
  	id.to_s + ": " + station.name.to_s + " - " + heading.to_s
  end
end
