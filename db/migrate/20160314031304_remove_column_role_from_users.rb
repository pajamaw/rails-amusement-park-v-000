class RemoveColumnRoleFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :role, :integer, :default => 0
  end
end
