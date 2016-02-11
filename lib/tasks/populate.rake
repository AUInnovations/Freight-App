#rake file to clear out all past database content and fill with fake data

namespace :db do
	desc "Erase and fill database"

	task :populate => :environment do
		require 'populator'
		require 'faker'

		#clear out existing records from Order and Customer models
		[Order,Customer].each(&:delete_all)

    Customer.populate 10 do |customer|
      customer.customer_type_cd         = Faker::Number.between(0, 1)
      customer.company_name             = Faker::Company.name
      customer.first_name               = Faker::Name.first_name
      customer.last_name                = Faker::Name.last_name
      customer.email                    = Faker::Internet.email
      customer.phone                    = Faker::PhoneNumber.phone_number
      customer.address                  = Faker::Address.street_address
      customer.city                     = Faker::Address.city
      customer.state                    = Faker::Address.state
      customer.zip                      = Faker::Address.zip
      customer.has_email_updates        = TRUE
      customer.deleted                  = FALSE
    end

		Order.populate 100 do |order|
			order.customer_first_name 								= Faker::Name.first_name
	    order.customer_last_name  								= Faker::Name.last_name
	    order.customer_company    								= Faker::Company.name
	    order.customer_email      								= Faker::Internet.email
	    order.customer_phone1											= Faker::PhoneNumber.phone_number
	    order.customer_phone2     								= Faker::PhoneNumber.phone_number
	    order.customer_city												= Faker::Address.city
	    order.customer_state											= Faker::Address.state
	    order.customer_zip												= Faker::Address.zip
	    order.customer_country    								= Faker::Address.country
	    order.origin_address											= Faker::Address.street_address
	    order.origin_city													= Faker::Address.city
	    order.origin_state											  = Faker::Address.state_abbr
	    order.origin_zip													= Faker::Address.zip
	  	order.origin_contact_name									= Faker::Name.name
	    order.origin_company_name 								= Faker::Company.name
	    order.origin_phone1												= Faker::PhoneNumber.phone_number
	    order.origin_phone2												= Faker::PhoneNumber.phone_number
	    order.dest_address												= Faker::Address.street_address
	    order.dest_city														= Faker::Address.city
	    order.dest_state													= Faker::Address.state
	    order.dest_zip														= Faker::Address.zip
	    order.dest_contact_name										= Faker::Name.name
	    order.dest_company_name										= Faker::Company.name
	    order.dest_phone1													= Faker::PhoneNumber.phone_number
	    order.dest_phone2													= Faker::PhoneNumber.phone_number
	    order.available_pickup_date								= Faker::Date.forward(23)
	    order.ship_type_cd												= Faker::Number.between(1, 10)
	    order.info_from_customer_visible					= TRUE
	    order.price																= Faker::Number.between(1, 10)
			order.price_terms_cd											= Faker::Number.between(1, 10)
	    order.carrier_paid_type_cd								= Faker::Number.between(1, 2)
	    order.note_to_customer										= Faker::Lorem.sentence(10, 3, 2)
	    order.note_to_customer_visible						= TRUE
	    order.referred_by_cd											= Faker::Number.between(1, 2)
	    order.send_email_confirmation_to_customer	= TRUE
      order.customer_id													= Faker::Number.between(0, Customer.count)
      order.deleted                             = FALSE
		end
	end
end
