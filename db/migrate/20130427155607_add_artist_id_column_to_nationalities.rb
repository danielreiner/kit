class AddArtistIdColumnToNationalities < ActiveRecord::Migration
  def change
    add_column :nationalities, :artist_id, :integer
  end
end
