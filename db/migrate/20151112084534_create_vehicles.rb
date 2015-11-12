class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.int :id
      t.int :transport_type
      t.boolean :isOperable
      t.int :vyear
      t.string :vmake
      t.string :vmodel

      t.timestamps null: false
    end
  end
end
