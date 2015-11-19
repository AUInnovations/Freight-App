require "administrate/base_dashboard"

class OrderDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    customer_first_name: Field::String,
    customer_last_name: Field::String,
    customer_company: Field::String,
    customer_email: Field::String,
    customer_phone1: Field::Number,
    customer_phone2: Field::Number,
    customer_city: Field::String,
    customer_state: Field::String,
    customer_zip: Field::Number,
    customer_country: Field::String,
    origin_address: Field::String,
    origin_city: Field::String,
    origin_state: Field::String,
    origin_zip: Field::Number,
    origin_contact_: Field::String,
    name: Field::String,
    origin_company_name: Field::String,
    origin_phone1: Field::Number,
    origin_phone2: Field::Number,
    dest_address: Field::String,
    dest_city: Field::String,
    dest_state: Field::String,
    dest_zip: Field::Number,
    dest_contact_name: Field::String,
    dest_company_name: Field::String,
    dest_phone1: Field::Number,
    dest_phone2: Field::Number,
    available_pickup_date: Field::DateTime,
    does_vehicle_run: Field::Boolean,
    ship_type: Field::String,
    info_from_customer_visible: Field::Boolean,
    load_id: Field::Number,
    price: Field::Number,
    price_terms: Field::String,
    carrier_paid_type: Field::String,
    note_to_customer: Field::Text,
    note_to_customer_visible: Field::Boolean,
    referred_by: Field::String,
    send_email_confirmation_to_customer: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    customer_id: Field::Number,
    assigned_carrier_id: Field::Number,
    assigned_broker_id: Field::Number,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :customer_first_name,
    :customer_last_name,
    :customer_company,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :customer_first_name,
    :customer_last_name,
    :customer_company,
    :customer_email,
    :customer_phone1,
    :customer_phone2,
    :customer_city,
    :customer_state,
    :customer_zip,
    :customer_country,
    :origin_address,
    :origin_city,
    :origin_state,
    :origin_zip,
    :origin_contact_,
    :name,
    :origin_company_name,
    :origin_phone1,
    :origin_phone2,
    :dest_address,
    :dest_city,
    :dest_state,
    :dest_zip,
    :dest_contact_name,
    :dest_company_name,
    :dest_phone1,
    :dest_phone2,
    :available_pickup_date,
    :does_vehicle_run,
    :ship_type,
    :info_from_customer_visible,
    :load_id,
    :price,
    :price_terms,
    :carrier_paid_type,
    :note_to_customer,
    :note_to_customer_visible,
    :referred_by,
    :send_email_confirmation_to_customer,
    :customer_id,
    :assigned_carrier_id,
    :assigned_broker_id,
  ]

  # Overwrite this method to customize how orders are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(order)
  #   "Order ##{order.id}"
  # end
end
