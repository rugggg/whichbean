class CreateDryings < ActiveRecord::Migration
  def change
    create_table :dryings do |t|
      t.string :method
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
