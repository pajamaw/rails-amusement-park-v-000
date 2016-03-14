class AddColumnNauseaToUser < ActiveRecord::Migration
  def change
    add_column :users, :nausea, :integer
  end
end
