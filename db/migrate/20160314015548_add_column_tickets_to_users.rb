class AddColumnTicketsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tickets, :integer
  end
end
