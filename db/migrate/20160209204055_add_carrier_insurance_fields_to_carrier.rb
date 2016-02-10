class AddCarrierInsuranceFieldsToCarrier < ActiveRecord::Migration
  def change
    add_column :carriers, :insurance_broker_company, :string
    add_column :carriers, :insurance_broker_name, :string
    add_column :carriers, :insurance_broker_address, :string
    add_column :carriers, :insurance_broker_city, :string
    add_column :carriers, :insurance_broker_zip, :integer
    add_column :carriers, :insurance_broker_state, :string
    add_column :carriers, :insurance_broker_phone, :string
    add_column :carriers, :insurance_broker_fax, :string
    add_column :carriers, :insurance_broker_email, :string
    add_column :carriers, :insurance_policy_number, :string
    add_column :carriers, :insurance_policy_expiration_date, :date
    add_column :carriers, :insurance_contact_agent_on_behave, :boolean
    add_column :carriers, :insurance_contact_agent_name, :string
    add_column :carriers, :insurance_contact_agent_email, :string
    add_column :carriers, :insurance_contact_agent_fax, :string
    add_column :carriers, :can_do_business, :boolean, null: false, default: false
  end
end
