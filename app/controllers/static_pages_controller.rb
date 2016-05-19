class StaticPagesController < ApplicationController

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def new_lead
    @lead = Lead.new
  end

  def carrier_signup
    @carrier = Carrier.new
  end

  def carrier_submitted
  end
end
