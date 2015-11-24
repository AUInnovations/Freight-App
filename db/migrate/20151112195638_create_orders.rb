class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_company
      t.string :customer_email
      t.string :customer_phone1
      t.string :customer_phone2
      t.string :customer_city
      t.string :customer_state
      t.integer :customer_zip
      t.string :customer_country
      t.string :origin_address
      t.string :origin_city
      t.string :origin_state
      t.integer :origin_zip
      t.string :origin_contact_name
      t.string :origin_company_name
      t.string :origin_phone1
      t.string :origin_phone2
      t.string :dest_address
      t.string :dest_city
      t.string :dest_state
      t.integer :dest_zip
      t.string :dest_contact_name
      t.string :dest_company_name
      t.string :dest_phone1
      t.string :dest_phone2
      t.date :available_pickup_date
      t.integer :ship_type_cd
      t.boolean :info_from_customer_visible
      t.integer :price
      t.integer :price_terms_cd
      t.integer :carrier_paid_type_cd
      t.text :note_to_customer
      t.boolean :note_to_customer_visible
      t.integer :referred_by_cd
      t.boolean :send_email_confirmation_to_customer
      t.integer :order_status
      t.belongs_to :broker, index: true
      t.belongs_to :customer, index: true
      t.belongs_to :carrier, index: true

      t.timestamps null: true
    end
  end
end
