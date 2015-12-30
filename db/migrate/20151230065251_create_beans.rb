class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :name
      t.string :location_id
      t.string :integer
      t.string :terrain_id
      t.string :integer
      t.string :weather_id
      t.string :integer
      t.string :cultivation_id
      t.string :integer
      t.string :varietal_id
      t.string :integer
      t.string :harvest_id
      t.string :integer
      t.string :preparation_id
      t.string :integer
      t.string :drying_id
      t.string :integer
      t.string :roast_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
