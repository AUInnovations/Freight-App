class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_company
      t.string :customer_email
      t.integer :customer_phone1
      t.integer :customer_phone2
      t.string :customer_city
      t.string :customer_state
      t.integer :customer_zip
      t.string :customer_country
      t.string :origin_city
      t.string :origin_state
      t.integer :origin_zip
      t.string :dest_city
      t.string :dest_state
      t.integer :dest_zip
      t.date :estimated_ship_date
      t.boolean :does_vehicle_run
      t.string :ship_type
      t.integer :vyear
      t.string :vmake
      t.string :vmodel
      t.string :vtype
      t.integer :price
      t.string :price_term
      t.text :note_to_customer
      t.string :referred_by

      t.timestamps null: false
    end
  end
end