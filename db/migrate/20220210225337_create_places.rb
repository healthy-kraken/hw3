class CreatePlaces < ActiveRecord::Migration[7.0]
  #About This Database:
  # Places I visited and inside this database there are journal entries
  #
  #

  def change
    create_table :places do |t|
      t.string "name"
      

      t.timestamps
    end
  end
end
