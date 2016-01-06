class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :country
      t.string :region
      t.integer :elevation_min
      t.integer :elevation_max

      t.timestamps null: false
    end
  end
end
