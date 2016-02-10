class Customer < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  has_many :orders, :inverse_of => :customer
  rails_admin do
    include_all_fields
    exclude_fields :versions, :deleted
  end
  def state_enum
    us_states_abbr
  end

  def customer_type_cd_enum
    customer_type_cd
  end
end
