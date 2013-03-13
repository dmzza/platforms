class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.references :station
      t.references :northeast_track
      t.references :southwest_track
      t.string :heading

      t.timestamps
    end
    add_index :platforms, :station_id
    add_index :platforms, :northeast_track_id
    add_index :platforms, :southwest_track_id
  end
end
