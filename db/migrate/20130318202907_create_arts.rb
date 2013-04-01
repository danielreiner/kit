class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title
      t.string :subline
      t.string :height
      t.string :width
      t.string :source
      t.string :date_of_origin

      t.timestamps
    end
  end
end
