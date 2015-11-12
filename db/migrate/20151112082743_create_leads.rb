class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.int :id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.int :phone
      t.datetime :shipping_date
      t.int :transport_type
      t.boolean :isOperable
      t.string :origin_city
      t.string :origin_state
      t.int :origin_zip
      t.string :dest_city
      t.string :dest_state
      t.int :dest_zip
      t.int :vyear
      t.string :vmake
      t.string :vmodel

      t.timestamps null: false
    end
  end
end
