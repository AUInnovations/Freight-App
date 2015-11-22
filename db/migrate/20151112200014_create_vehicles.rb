class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.belongs_to :order, index: true
      t.integer :year
      t.string :make
      t.string :model
      t.integer :vehicle_type_cd
      t.string :vin
      t.boolean :does_vehicle_run
      t.boolean :is_stock

      t.timestamps null: false
    end
  end
end
