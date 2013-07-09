class RenamePermissionColumn < ActiveRecord::Migration
  def change
    rename_column :users, :permission, :artist_tickets
  end
end
