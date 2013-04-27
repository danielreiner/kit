class AddNationalityIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :nationality_id, :integer
  end
end
