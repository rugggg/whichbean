class CreateRoasters < ActiveRecord::Migration
  def change
    create_table :roasters do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :country
      t.string :region
      t.string :address
      t.integer :zip

      t.timestamps null: false
    end
  end
end
