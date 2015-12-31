class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :name
      t.integer :location_id
      t.integer :terrain_id
      t.integer :weather_id
      t.integer :cultivation_id
      t.integer :varietal_id
      t.integer :harvest_id
      t.integer :preparation_id
      t.integer :drying_id
      t.integer :roast_id

      t.timestamps null: false
    end
  end
end
