class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :farm_name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :terrain_id
      t.integer :weather_id
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
