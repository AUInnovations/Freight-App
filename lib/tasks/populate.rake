#rake file to clear out all past database content and fill with fake data

namespace :db do
	desc "Erase and fill database"

	task :populate => :environment do
		require 'populator'
		require 'faker'

		#clear out existing records from Order and Customer models
		[Order,Customer].each(&:delete_all)

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
	    order.origin_state												= Faker::Address.state
	    order.origin_zip													= Faker::Address.zip
	  	order.origin_contact_											= Faker::PhoneNumber.phone_number
	    order.name																= Faker::Name.name
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
	    order.does_vehicle_run										= Faker::Number.between(1, 2)
	    order.ship_type														= Faker::Number.between(1, 10)
	    order.info_from_customer_visible					= Faker::PhoneNumber.phone_number
	    order.load_id															= Faker::Number.between(1, 2)
	    order.price																= Faker::Number.between(1, 10)
			order.price_terms													= Faker::Number.between(1, 10)
	    order.carrier_paid_type										= Faker::Number.between(1, 2)
	    order.note_to_customer										= Faker::Number.between(1, 2)
	    order.note_to_customer_visible						= Faker::Number.between(1, 2)
	    order.referred_by													= Faker::Number.between(1, 2)
	    order.send_email_confirmation_to_customer	= Faker::Number.between(1, 2)
		end
	end
end
