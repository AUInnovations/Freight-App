class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_company
      t.string :customer_email
      t.string :customer_phone1
      t.string :customer_phone2
      t.string :customer_city
      t.string :customer_state
      t.integer :customer_zip
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
      t.integer :ship_type_cd
      t.integer :vyear
      t.string :vmake
      t.string :vmodel
      t.integer :vtype_cd
      t.integer :price
      t.integer :price_term_cd
      t.text :note_to_customer
      t.integer :referred_by_cd

      t.timestamps null: true
    end
  end
end
