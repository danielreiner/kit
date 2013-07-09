class RenameStartsAtColumn < ActiveRecord::Migration
  
  def change
    rename_column :events, :start_date, :opening
  end
  
end
