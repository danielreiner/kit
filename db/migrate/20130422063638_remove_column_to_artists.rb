class RemoveColumnToArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :featured
  end

  def down
    add_column :artists, :featured, :boolean
  end
end
