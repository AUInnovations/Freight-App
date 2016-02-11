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
end
