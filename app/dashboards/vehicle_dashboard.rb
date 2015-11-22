require "administrate/base_dashboard"

class VehicleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    order: Field::BelongsTo,
    id: Field::Number,
    year: Field::Number,
    make: Field::String,
    model: Field::String,
    vehicle_type_cd: Field::Number,
    vin: Field::String,
    does_vehicle_run: Field::Boolean,
    is_stock: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :order,
    :id,
    :year,
    :make,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :order,
    :year,
    :make,
    :model,
    :vehicle_type_cd,
    :vin,
    :does_vehicle_run,
    :is_stock,
  ]

  # Overwrite this method to customize how vehicles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(vehicle)
  #   "Vehicle ##{vehicle.id}"
  # end
end
