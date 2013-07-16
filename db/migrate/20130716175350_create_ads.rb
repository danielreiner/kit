class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.string :type
      t.string :file
      t.integer :position
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :artist_id
      t.integer :event_id
      t.references :attachable

      t.timestamps
    end
    add_index :ads, :attachable_id
  end
end
