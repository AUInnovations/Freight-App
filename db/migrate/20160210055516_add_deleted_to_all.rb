class AddDeletedToAll < ActiveRecord::Migration
  def change
    add_column :administrators, :deleted, :boolean, null: false, default: false
    add_column :brokers, :deleted, :boolean, null: false, default: false
    add_column :carriers, :deleted, :boolean, null: false, default: false
    add_column :carrier_lanes, :deleted, :boolean, null: false, default: false
    add_column :customers, :deleted, :boolean, null: false, default: false
    add_column :leads, :deleted, :boolean, null: false, default: false
    add_column :loads, :deleted, :boolean, null: false, default: false
    add_column :orders, :deleted, :boolean, null: false, default: false
    add_column :quotes, :deleted, :boolean, null: false, default: false
    add_column :users, :deleted, :boolean, null: false, default: false
    add_column :vehicles, :deleted, :boolean, null: false, default: false
  end
end
