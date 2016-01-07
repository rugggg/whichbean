class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :name
      t.integer :producer_id
      t.integer :roaster_id
      t.string :varietal
      t.string :preparation
      t.string :drying
      t.string :roast

      t.timestamps null: false
    end
  end
end
