class Carrier < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  has_many :orders, :inverse_of => :carrier
  has_many :carrier_lanes, :dependent => :delete_all
  rails_admin do
    include_all_fields
    exclude_fields :versions, :deleted
  end
  def mailing_state_enum
    us_states_abbr
  end
  def physical_state_enum
    us_states_abbr
  end
end
