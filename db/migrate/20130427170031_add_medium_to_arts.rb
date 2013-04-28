class AddMediumToArts < ActiveRecord::Migration
  def change
    add_column :arts, :medium, :string
  end
end
