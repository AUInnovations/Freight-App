class Lead < ActiveRecord::Base
  include EnumHelper
  has_paper_trail
  def vehicle_type_cd_enum
    vehicle_type_cd
  end
  def price_terms_cd_enum
    price_terms_cd
  end
  def dest_state_enum
    us_states_abbr
  end
  def origin_state_enum
    us_states_abbr
  end
end
