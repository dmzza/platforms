class AddTerminalToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :terminal_id, :integer
  end
end
