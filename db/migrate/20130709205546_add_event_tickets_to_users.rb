class AddEventTicketsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :event_tickets, :integer
  end
end
