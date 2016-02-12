class NewLeadController < ApplicationController
  def new_lead
  @lead = Lead.new(params[:lead])
    @lead.save
    redirect_to '/new_lead_submitted'
  end
  private
    def article_params
      params.require(:lead).permit(:vehicle_year, :vehicle_make, :vehicle_model, :vehicle_type_cd, :origin_zip, :origin_city, :origin_state, :dest_zip, :dest_city, :dest_state, :shipping_date)
    end
end