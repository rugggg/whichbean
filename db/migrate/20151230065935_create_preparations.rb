class CreatePreparations < ActiveRecord::Migration
  def change
    create_table :preparations do |t|
      t.string :type
      t.integer :flavour_profile_id

      t.timestamps null: false
    end
  end
end
