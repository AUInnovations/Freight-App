# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160210055516) do

  create_table "administrators", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "deleted",    default: false, null: false
  end

  create_table "brokers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "deleted",    default: false, null: false
  end

  create_table "carrier_lanes", force: :cascade do |t|
    t.integer  "one_three_hauler"
    t.integer  "four_six_hauler"
    t.integer  "seven_ten_hauler"
    t.boolean  "non_running_vehicles",                 null: false
    t.boolean  "enclosed_transport",                   null: false
    t.integer  "local_or_lane"
    t.string   "origin_city"
    t.string   "origin_state"
    t.string   "dest_city"
    t.string   "dest_state"
    t.integer  "radius"
    t.integer  "carrier_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "deleted",              default: false, null: false
  end

  add_index "carrier_lanes", ["carrier_id"], name: "index_carrier_lanes_on_carrier_id"

  create_table "carriers", force: :cascade do |t|
    t.integer  "dot_number"
    t.boolean  "is_tax_id"
    t.string   "company_name"
    t.string   "dba_name"
    t.string   "mailing_address"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.integer  "mailing_zip"
    t.string   "physical_address"
    t.string   "physical_city"
    t.string   "physical_state"
    t.integer  "physical_zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "primary_contact_name"
    t.string   "primary_contact_phone"
    t.string   "primary_contact_email"
    t.string   "dispatch_contact_name"
    t.string   "dispatch_contact_phone"
    t.string   "dispatch_contact_email"
    t.string   "accounting_contact_name"
    t.string   "account_contact_phone"
    t.string   "accounting_contact_email"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "insurance_broker_company"
    t.string   "insurance_broker_name"
    t.string   "insurance_broker_address"
    t.string   "insurance_broker_city"
    t.integer  "insurance_broker_zip"
    t.string   "insurance_broker_state"
    t.string   "insurance_broker_phone"
    t.string   "insurance_broker_fax"
    t.string   "insurance_broker_email"
    t.string   "insurance_policy_number"
    t.date     "insurance_policy_expiration_date"
    t.boolean  "insurance_contact_agent_on_behave"
    t.string   "insurance_contact_agent_name"
    t.string   "insurance_contact_agent_email"
    t.string   "insurance_contact_agent_fax"
    t.boolean  "can_do_business",                   default: false, null: false
    t.boolean  "deleted",                           default: false, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "customer_type_cd"
    t.string   "company_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.integer  "state"
    t.integer  "zip"
    t.boolean  "has_email_updates"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "deleted",           default: false, null: false
  end

  create_table "leads", force: :cascade do |t|
    t.integer  "broker_id"
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_email"
    t.string   "customer_phone"
    t.integer  "vehicle_year"
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.integer  "vehicle_type_cd"
    t.string   "origin_city"
    t.string   "origin_state"
    t.integer  "origin_zip"
    t.string   "dest_city"
    t.string   "dest_state"
    t.integer  "dest_zip"
    t.date     "shipping_date"
    t.integer  "price"
    t.integer  "price_terms_cd"
    t.boolean  "archived"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "deleted",             default: false, null: false
  end

  add_index "leads", ["broker_id"], name: "index_leads_on_broker_id"

  create_table "loads", force: :cascade do |t|
    t.integer  "status"
    t.date     "pick_up_date"
    t.date     "delivery_date"
    t.string   "driver_name"
    t.string   "driver_phone"
    t.integer  "offer"
    t.date     "dispatch_date"
    t.integer  "carrier_id"
    t.integer  "order_id",                      null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "deleted",       default: false, null: false
  end

  add_index "loads", ["carrier_id"], name: "index_loads_on_carrier_id"
  add_index "loads", ["order_id"], name: "index_loads_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_company"
    t.string   "customer_email"
    t.string   "customer_phone1"
    t.string   "customer_phone2"
    t.string   "customer_city"
    t.string   "customer_state"
    t.integer  "customer_zip"
    t.string   "customer_country"
    t.string   "origin_address"
    t.string   "origin_city"
    t.string   "origin_state"
    t.integer  "origin_zip"
    t.string   "origin_contact_name"
    t.string   "origin_company_name"
    t.string   "origin_phone1"
    t.string   "origin_phone2"
    t.string   "dest_address"
    t.string   "dest_city"
    t.string   "dest_state"
    t.integer  "dest_zip"
    t.string   "dest_contact_name"
    t.string   "dest_company_name"
    t.string   "dest_phone1"
    t.string   "dest_phone2"
    t.date     "available_pickup_date"
    t.integer  "ship_type_cd"
    t.boolean  "info_from_customer_visible"
    t.integer  "price"
    t.integer  "price_terms_cd"
    t.integer  "carrier_paid_type_cd"
    t.text     "note_to_customer"
    t.boolean  "note_to_customer_visible"
    t.integer  "referred_by_cd"
    t.boolean  "send_email_confirmation_to_customer"
    t.integer  "order_status"
    t.integer  "broker_id"
    t.integer  "customer_id"
    t.integer  "carrier_id"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.boolean  "deleted",                             default: false, null: false
  end

  add_index "orders", ["broker_id"], name: "index_orders_on_broker_id"
  add_index "orders", ["carrier_id"], name: "index_orders_on_carrier_id"
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "quotes", force: :cascade do |t|
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_company"
    t.string   "customer_email"
    t.string   "customer_phone1"
    t.string   "customer_phone2"
    t.string   "customer_city"
    t.string   "customer_state"
    t.integer  "customer_zip"
    t.string   "customer_country"
    t.string   "origin_city"
    t.string   "origin_state"
    t.integer  "origin_zip"
    t.string   "dest_city"
    t.string   "dest_state"
    t.integer  "dest_zip"
    t.date     "estimated_ship_date"
    t.boolean  "does_vehicle_run"
    t.integer  "ship_type_cd"
    t.integer  "vyear"
    t.string   "vmake"
    t.string   "vmodel"
    t.integer  "vtype_cd"
    t.integer  "price"
    t.integer  "price_terms_cd"
    t.text     "note_to_customer"
    t.integer  "referred_by_cd"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "deleted",             default: false, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "role"
    t.boolean  "deleted",                default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.integer  "vehicle_type_cd"
    t.string   "vin"
    t.boolean  "does_vehicle_run"
    t.boolean  "is_stock"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "deleted",          default: false, null: false
  end

  add_index "vehicles", ["order_id"], name: "index_vehicles_on_order_id"

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id"

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                         null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 1073741823
    t.datetime "created_at"
    t.text     "object_changes", limit: 1073741823
    t.integer  "transaction_id"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id"

end
