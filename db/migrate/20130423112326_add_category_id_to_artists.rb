class AddCategoryIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :category_id, :integer
  end
end
