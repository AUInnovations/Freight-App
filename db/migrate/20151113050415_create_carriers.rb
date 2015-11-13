class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.integer :dot_number
      t.boolean :is_tax_id
      t.string :company_name
      t.string :dba_name
      t.string :mailing_address
      t.string :mailing_city
      t.string :mailing_state
      t.integer :mailing_zip
      t.string :physical_address
      t.string :physical_city
      t.string :physical_state
      t.integer :physical_zip
      t.integer :phone
      t.integer :fax
      t.string :primary_contact_name
      t.integer :primary_contact_phone
      t.string :primary_contact_email
      t.string :dispatch_contact_name
      t.integer :dispatch_contact_phone
      t.string :dispatch_contact_email
      t.string :accounting_contact_name
      t.integer :account_contact_phone
      t.string :accounting_contact_email

      t.timestamps null: false
    end
  end
end
