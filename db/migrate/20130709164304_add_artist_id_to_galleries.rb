class AddArtistIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :artist_id, :integer
  end
end
