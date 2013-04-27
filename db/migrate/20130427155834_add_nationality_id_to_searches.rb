class AddNationalityIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :nationality_id, :integer
  end
end
