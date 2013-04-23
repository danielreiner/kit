class RemoveCategoryFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :category
  end

  def down
    add_column :artists, :category, :string
  end
end
