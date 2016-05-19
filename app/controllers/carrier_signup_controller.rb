class CarrierSignupController < ApplicationController
  def carrier_signup
  @carrier = Carrier.new(article_params)
  @carrier.save
    redirect_to '/carrier_submitted'
  end
  private
    def article_params
      params.require(:carrier_form).permit(:company_name, :dot_number, :mailing_address, :mailing_city, :mailing_state, :primary_contact_name, :primary_contact_phone, :primary_contact_email, :dispatch_contact_email)
    end
end
