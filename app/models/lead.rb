class Lead < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  belongs_to :broker
  rails_admin do
    configure :broker do
      inline_add false
      inline_edit false
    end
    include_all_fields
    exclude_fields :versions, :deleted
  end
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
