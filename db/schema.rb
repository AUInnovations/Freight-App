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

ActiveRecord::Schema.define(version: 20151113050415) do

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
    t.integer  "phone"
    t.integer  "fax"
    t.string   "primary_contact_name"
    t.integer  "primary_contact_phone"
    t.string   "primary_contact_email"
    t.string   "dispatch_contact_name"
    t.integer  "dispatch_contact_phone"
    t.string   "dispatch_contact_email"
    t.string   "accounting_contact_name"
    t.integer  "account_contact_phone"
    t.string   "accounting_contact_email"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_type"
    t.string   "company_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.boolean  "has_email_updates"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "leads", force: :cascade do |t|
    t.integer  "broker_id"
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_email"
    t.integer  "customer_phone"
    t.integer  "vehicle_year"
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.string   "vehicle_type"
    t.string   "origin_city"
    t.string   "origin_state"
    t.integer  "origin_zip"
    t.string   "dest_city"
    t.string   "dest_state"
    t.integer  "dest_zip"
    t.datetime "shipping_date"
    t.integer  "price"
    t.string   "price_term"
    t.boolean  "archived"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_company"
    t.string   "customer_email"
    t.integer  "customer_phone1"
    t.integer  "customer_phone2"
    t.string   "customer_city"
    t.string   "customer_state"
    t.integer  "customer_zip"
    t.string   "customer_country"
    t.string   "origin_address"
    t.string   "origin_city"
    t.string   "origin_state"
    t.integer  "origin_zip"
    t.string   "origin_contact_"
    t.string   "name"
    t.string   "origin_company_name"
    t.integer  "origin_phone1"
    t.integer  "origin_phone2"
    t.string   "dest_address"
    t.string   "dest_city"
    t.string   "dest_state"
    t.integer  "dest_zip"
    t.string   "dest_contact_name"
    t.string   "dest_company_name"
    t.integer  "dest_phone1"
    t.integer  "dest_phone2"
    t.date     "available_pickup_date"
    t.boolean  "does_vehicle_run"
    t.string   "ship_type"
    t.boolean  "info_from_customer_visible"
    t.integer  "load_id"
    t.integer  "price"
    t.string   "price_terms"
    t.string   "carrier_paid_type"
    t.text     "note_to_customer"
    t.boolean  "note_to_customer_visible"
    t.string   "referred_by"
    t.boolean  "send_email_confirmation_to_customer"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_company"
    t.string   "customer_email"
    t.integer  "customer_phone1"
    t.integer  "customer_phone2"
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
    t.string   "ship_type"
    t.integer  "vyear"
    t.string   "vmake"
    t.string   "vmodel"
    t.string   "vtype"
    t.integer  "price"
    t.string   "price_term"
    t.text     "note_to_customer"
    t.string   "referred_by"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "load_id"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "type"
    t.string   "vin"
    t.boolean  "is_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
