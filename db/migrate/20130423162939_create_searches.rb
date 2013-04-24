class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :category_id
      t.string :nationality

      t.timestamps
    end
  end
end
