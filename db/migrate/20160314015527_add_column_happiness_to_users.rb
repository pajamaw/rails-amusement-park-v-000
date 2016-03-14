class AddColumnHappinessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :happiness, :integer
  end
end
