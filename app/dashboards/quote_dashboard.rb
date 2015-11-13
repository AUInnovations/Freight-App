require "administrate/base_dashboard"

class QuoteDashboard < Administrate::BaseDashboard
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
    origin_city: Field::String,
    origin_state: Field::String,
    origin_zip: Field::Number,
    dest_city: Field::String,
    dest_state: Field::String,
    dest_zip: Field::Number,
    estimated_ship_date: Field::DateTime,
    does_vehicle_run: Field::Boolean,
    ship_type: Field::String,
    vyear: Field::Number,
    vmake: Field::String,
    vmodel: Field::String,
    vtype: Field::String,
    price: Field::Number,
    price_term: Field::String,
    note_to_customer: Field::Text,
    referred_by: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
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
    :origin_city,
    :origin_state,
    :origin_zip,
    :dest_city,
    :dest_state,
    :dest_zip,
    :estimated_ship_date,
    :does_vehicle_run,
    :ship_type,
    :vyear,
    :vmake,
    :vmodel,
    :vtype,
    :price,
    :price_term,
    :note_to_customer,
    :referred_by,
  ]
end
