class CreateRoasts < ActiveRecord::Migration
  def change
    create_table :roasts do |t|
      t.string :name
      t.integer :strength
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
