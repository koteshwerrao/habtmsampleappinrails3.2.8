class Addmigration < ActiveRecord::Migration
 def change
  #create_join_table :people, :communities, column_options: {null: true} do |t|
# t.index [:person_id, :community_id]
create_table :communities_people , id: false do |t|
    t.integer :community_id, null: false
    t.integer :person_id, null: false

end
end 
end
