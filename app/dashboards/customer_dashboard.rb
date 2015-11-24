require "administrate/base_dashboard"

class CustomerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    customer_type_cd: Field::Number,
    company_name: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    email: Field::String,
    phone: Field::String,
    address: Field::String,
    city: Field::String,
    state: Field::Number,
    zip: Field::Number,
    has_email_updates: Field::Boolean,
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
    :customer_type_cd,
    :company_name,
    :first_name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :customer_type_cd,
    :company_name,
    :first_name,
    :last_name,
    :email,
    :phone,
    :address,
    :city,
    :state,
    :zip,
    :has_email_updates,
  ]

  # Overwrite this method to customize how customers are displayed
  # across all pages of the admin dashboard.
  #
   def display_resource(customer)
     "#{customer.first_name} #{customer.last_name}"
   end
end
