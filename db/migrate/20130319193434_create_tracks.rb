class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :duration
      t.references :lesser_platform
      t.references :greater_platform
      t.references :route

      t.timestamps
    end
    add_index :tracks, :lesser_platform_id
    add_index :tracks, :greater_platform_id
    add_index :tracks, :route_id
  end
end
