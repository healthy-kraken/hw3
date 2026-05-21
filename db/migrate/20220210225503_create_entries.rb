class CreateEntries < ActiveRecord::Migration[7.0]
  # About this database: 
  # Entries associate with places visited
  
  
  def change
    create_table :entries do |t|
      t.string "title"
      t.text "description"
      t.date "occurred_on"
      t.integer "place_id"
      
      t.timestamps
    end
  end
end
