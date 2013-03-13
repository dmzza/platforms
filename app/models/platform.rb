class Platform < ActiveRecord::Base
	attr_accessible :heading, :station_id, :northeast_track_id, :southwest_track_id

  belongs_to :station
  belongs_to :northeast_track, :class_name => "Track"
  belongs_to :southwest_track, :class_name => "Track"
end
