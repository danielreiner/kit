class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :subline
      t.string :artists
      t.string :description
      t.string :url
      t.string :email
      t.string :co
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :country
      t.datetime :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
