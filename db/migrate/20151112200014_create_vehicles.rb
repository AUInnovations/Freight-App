class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :load_id
      t.integer :year
      t.string :make
      t.string :model
      t.string :type
      t.string :vin
      t.boolean :is_stock

      t.timestamps null: false
    end
  end
end
