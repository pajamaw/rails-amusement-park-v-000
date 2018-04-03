class CreateRides < ActiveRecord::Migration
  # Write your migrations here
  def change
    create_table :rides do |t|
      #has a user_id field
      t.integer :user_id
      #has a attraction_id field
      t.integer :attraction_id
      t.timestamps null: false
    end
  end
end
