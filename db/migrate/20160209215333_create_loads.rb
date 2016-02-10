class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.integer :status
      t.date :pick_up_date
      t.date :delivery_date
      t.string :driver_name
      t.string :driver_phone
      t.integer :offer
      t.date :dispatch_date
      t.belongs_to :carrier, index:true
      t.belongs_to :order, index:true, null:false

      t.timestamps null: false
    end
  end
end
