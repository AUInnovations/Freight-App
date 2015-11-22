class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_type_cd
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city
      t.integer :state
      t.integer :zip
      t.boolean :has_email_updates

      t.timestamps null: false
    end
  end
end
