class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
