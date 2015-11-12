class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.int :id
      t.string :name
      t.string :email
      t.int :number
      t.boolean :payment_added
      t.int :login_id

      t.timestamps null: false
    end
  end
end
