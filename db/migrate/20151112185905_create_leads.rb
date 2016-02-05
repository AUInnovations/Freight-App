class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.belongs_to :broker, index: true
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_email
      t.string :customer_phone
      t.integer :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_type_cd
      t.string :origin_city
      t.string :origin_state
      t.integer :origin_zip
      t.string :dest_city
      t.string :dest_state
      t.integer :dest_zip
      t.datetime :shipping_date
      t.integer :price
      t.integer :price_terms_cd
      t.boolean :archived

      t.timestamps null: false
    end
  end
end
