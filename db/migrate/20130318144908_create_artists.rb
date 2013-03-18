class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :nationality
      t.string :category
      t.date :birthday
      t.text :description

      t.timestamps
    end
  end
end
