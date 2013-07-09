class AddEventIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :event_id, :integer
  end
end
