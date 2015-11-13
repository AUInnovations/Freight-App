class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
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
      t.string :origin_address
      t.string :origin_city
      t.string :origin_state
      t.integer :origin_zip
      t.string :origin_contact_
      t.string :name
      t.string :origin_company_name
      t.integer :origin_phone1
      t.integer :origin_phone2
      t.string :dest_address
      t.string :dest_city
      t.string :dest_state
      t.integer :dest_zip
      t.string :dest_contact_name
      t.string :dest_company_name
      t.integer :dest_phone1
      t.integer :dest_phone2
      t.date :available_pickup_date
      t.boolean :does_vehicle_run
      t.string :ship_type
      t.boolean :info_from_customer_visible
      t.integer :load_id
      t.integer :price
      t.string :price_terms
      t.string :carrier_paid_type
      t.text :note_to_customer
      t.boolean :note_to_customer_visible
      t.string :referred_by
      t.boolean :send_email_confirmation_to_customer

      t.timestamps null: false
    end
  end
end
