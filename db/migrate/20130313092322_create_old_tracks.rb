class CreateOldTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :direction

      t.timestamps
    end
  end
end
