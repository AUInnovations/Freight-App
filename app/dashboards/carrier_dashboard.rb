require "administrate/base_dashboard"

class CarrierDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    dot_number: Field::Number,
    is_tax_id: Field::Boolean,
    company_name: Field::String,
    dba_name: Field::String,
    mailing_address: Field::String,
    mailing_city: Field::String,
    mailing_state: Field::String,
    mailing_zip: Field::Number,
    physical_address: Field::String,
    physical_city: Field::String,
    physical_state: Field::String,
    physical_zip: Field::Number,
    phone: Field::Number,
    fax: Field::Number,
    primary_contact_name: Field::String,
    primary_contact_phone: Field::Number,
    primary_contact_email: Field::String,
    dispatch_contact_name: Field::String,
    dispatch_contact_phone: Field::Number,
    dispatch_contact_email: Field::String,
    accounting_contact_name: Field::String,
    account_contact_phone: Field::Number,
    accounting_contact_email: Field::String,
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
    :dot_number,
    :is_tax_id,
    :company_name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :dot_number,
    :is_tax_id,
    :company_name,
    :dba_name,
    :mailing_address,
    :mailing_city,
    :mailing_state,
    :mailing_zip,
    :physical_address,
    :physical_city,
    :physical_state,
    :physical_zip,
    :phone,
    :fax,
    :primary_contact_name,
    :primary_contact_phone,
    :primary_contact_email,
    :dispatch_contact_name,
    :dispatch_contact_phone,
    :dispatch_contact_email,
    :accounting_contact_name,
    :account_contact_phone,
    :accounting_contact_email,
  ]

  # Overwrite this method to customize how carriers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(carrier)
  #   "Carrier ##{carrier.id}"
  # end
end
