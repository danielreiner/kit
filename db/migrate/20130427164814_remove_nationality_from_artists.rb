class RemoveNationalityFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :nationality
  end

  def down
    add_column :artists, :nationality, :string
  end
end
