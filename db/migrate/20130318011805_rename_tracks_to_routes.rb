class RenameTracksToRoutes < ActiveRecord::Migration
  def change
  	rename_table :tracks, :routes
  end
end
