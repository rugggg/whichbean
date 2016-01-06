class CreateRoasters < ActiveRecord::Migration
  def change
    create_table :roasters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
