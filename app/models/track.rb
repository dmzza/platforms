class Track < ActiveRecord::Base
  attr_accessible :direction, :terminal_id

  belongs_to :terminal, :class_name => 'Station'
  has_many :northeast_platforms, :foreign_key => 'northeast_track_id', :class_name => 'Platform'
  has_many :southwest_platforms, :foreign_key => 'southwest_track_id', :class_name => 'Platform'
  has_many :northeast_stations, :through => :northeast_platforms, :source => :station
  has_many :southwest_stations, :through => :southwest_platforms, :source => :station

  def stations
  	collection = northeast_stations + southwest_stations

  	collection = collection.sort{|a, b| b.id <=> a.id}
  	if collection[0].id == terminal.id
  		collection = collection.sort{|a, b| a.id <=> b.id}
  	end
  	collection
  end

end
