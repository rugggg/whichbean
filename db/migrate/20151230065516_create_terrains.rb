class CreateTerrains < ActiveRecord::Migration
  def change
    create_table :terrains do |t|
      t.integer :elevation
      t.integer :groundwater
      t.integer :exposure
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
