class CreateAttractions < ActiveRecord::Migration
 # Write your migrations here
 def change
   create_table :attractions do |t|
     #has a name field
     t.string :name
     #has a min_height field
     t.integer :min_height
     #has a nausea_rating field
     t.integer :nausea_rating
     #has a happiness_rating field
     t.integer :happiness_rating
     #has a ticket_number field
     t.integer :tickets
     t.timestamps null: false
    end
  end
end
