class RenameTrackIdsToRouteIds < ActiveRecord::Migration
  def change
  	rename_column :platforms, :northeast_track_id, :northeast_route_id
  	rename_column :platforms, :southwest_track_id, :southwest_route_id
  end

end
