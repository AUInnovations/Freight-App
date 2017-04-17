class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.integer :broker_id
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_email
      t.integer :customer_phone
      t.integer :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.string :vehicle_type
      t.string :origin_city
      t.string :origin_state
      t.integer :origin_zip
      t.string :dest_city
      t.string :dest_state
      t.integer :dest_zip
      t.datetime :shipping_date
      t.integer :price
      t.string :price_term
      t.boolean :archived

      t.timestamps null: true
    end
  end
end
