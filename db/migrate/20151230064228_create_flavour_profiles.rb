class CreateFlavourProfiles < ActiveRecord::Migration
  def change
    create_table :flavour_profiles do |t|
      t.string :body
      t.integer :fruit_notes
      t.integer :spice_notes
      t.integer :chocolate_notes
      t.integer :grain_notes
      t.integer :roast_notes
      t.integer :floral_notes
      t.integer :nut_notes
      t.integer :sugar_notes
      t.integer :savory_notes

      t.timestamps null: false
    end
  end
end
