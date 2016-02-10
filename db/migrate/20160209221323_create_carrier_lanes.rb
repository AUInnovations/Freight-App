class CreateCarrierLanes < ActiveRecord::Migration
  def change
    create_table :carrier_lanes do |t|
      t.integer :one_three_hauler
      t.integer :four_six_hauler
      t.integer :seven_ten_hauler
      t.boolean :non_running_vehicles, null: false
      t.boolean :enclosed_transport, null: false
      t.integer :local_or_lane
      t.string :origin_city
      t.string :origin_state
      t.string :dest_city
      t.string :dest_state
      t.integer :radius

      t.belongs_to :carrier, index:true
      t.timestamps null: false
    end
  end
end
