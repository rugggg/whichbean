class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.integer :ripeness
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
