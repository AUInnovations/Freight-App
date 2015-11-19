class AddCarrierAndCustomerIdsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customer_id, :integer
    add_column :orders, :assigned_carrier_id, :integer
    add_column :orders, :assigned_broker_id, :integer
  end
end
