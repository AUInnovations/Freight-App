require "administrate/base_dashboard"

class LeadDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    broker: Field::BelongsTo,
    customer_first_name: Field::String,
    customer_last_name: Field::String,
    customer_email: Field::String,
    customer_phone: Field::Number,
    vehicle_year: Field::Number,
    vehicle_make: Field::String,
    vehicle_model: Field::String,
    vehicle_type_cd: Field::Number,
    origin_city: Field::String,
    origin_state: Field::String,
    origin_zip: Field::Number,
    dest_city: Field::String,
    dest_state: Field::String,
    dest_zip: Field::Number,
    shipping_date: Field::DateTime,
    price: Field::Number,
    price_terms_cd: Field::Number,
    archived: Field::Boolean,
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
    :broker,
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
    :broker,
    :customer_first_name,
    :customer_last_name,
    :customer_email,
    :customer_phone,
    :vehicle_year,
    :vehicle_make,
    :vehicle_model,
    :vehicle_type_cd,
    :origin_city,
    :origin_state,
    :origin_zip,
    :dest_city,
    :dest_state,
    :dest_zip,
    :shipping_date,
    :price,
    :price_terms_cd,
    :archived,
  ]

  # Overwrite this method to customize how leads are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(lead)
  #   "Lead ##{lead.id}"
  # end
end
