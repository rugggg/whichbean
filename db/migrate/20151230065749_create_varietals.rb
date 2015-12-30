class CreateVarietals < ActiveRecord::Migration
  def change
    create_table :varietals do |t|
      t.string :name
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
