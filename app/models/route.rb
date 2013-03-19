class Route < ActiveRecord::Base
	attr_accessible :name, :direction, :terminal_id
	belongs_to :terminal, :class_name => 'Station'
	has_many :northeast_platforms, :foreign_key => 'northeast_route_id', :class_name => 'Platform'
	has_many :southwest_platforms, :foreign_key => 'southwest_route_id', :class_name => 'Platform'
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

	def platforms
		collection = northeast_platforms + southwest_platforms

		collection = collection.sort{|a, b| b.id <=> a.id}
		if collection[0].station.id == terminal.id
			collection = collection.sort{|a, b| a.id <=> b.id}
		end
		collection
	end
end
