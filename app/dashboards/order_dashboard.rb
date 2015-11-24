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
    customer_phone1: Field::String,
    customer_phone2: Field::String,
    customer_city: Field::String,
    customer_state: Field::String,
    customer_zip: Field::Number,
    customer_country: Field::String,
    origin_address: Field::String,
    origin_city: Field::String,
    origin_state: Field::String,
    origin_zip: Field::Number,
    origin_contact_name: Field::String,
    origin_company_name: Field::String,
    origin_phone1: Field::String,
    origin_phone2: Field::String,
    dest_address: Field::String,
    dest_city: Field::String,
    dest_state: Field::String,
    dest_zip: Field::Number,
    dest_contact_name: Field::String,
    dest_company_name: Field::String,
    dest_phone1: Field::String,
    dest_phone2: Field::String,
    available_pickup_date: Field::DateTime,
    ship_type_cd: Field::Number,
    info_from_customer_visible: Field::Boolean,
    vehicles: Field::HasMany,
    price: Field::Number,
    price_terms_cd: Field::Number,
    carrier_paid_type_cd: Field::Number,
    note_to_customer: Field::Text,
    note_to_customer_visible: Field::Boolean,
    referred_by_cd: Field::Number,
    send_email_confirmation_to_customer: Field::Boolean,
    broker: Field::BelongsTo,
    customer: Field::BelongsTo,
    carrier: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :vehicles,
    :id,
    :customer_first_name,
    :customer_last_name,
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
    :origin_contact_name,
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
    :ship_type_cd,
    :info_from_customer_visible,
    :vehicles,
    :price,
    :price_terms_cd,
    :carrier_paid_type_cd,
    :note_to_customer,
    :note_to_customer_visible,
    :referred_by_cd,
    :send_email_confirmation_to_customer,
    :broker,
    :customer,
    :carrier,
  ]

  # Overwrite this method to customize how orders are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(order)
  #   "Order ##{order.id}"
  # end
end
