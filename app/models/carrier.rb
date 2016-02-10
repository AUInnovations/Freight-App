class Carrier < ActiveRecord::Base
  include EnumHelper
  has_paper_trail
  has_many :orders, :inverse_of => :carrier
  has_many :carrier_lanes
  def mailing_state_enum
    us_states_abbr
  end
  def physical_state_enum
    us_states_abbr
  end
end
