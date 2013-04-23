class AddArtistIdColumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :artist_id, :integer
  end
end
