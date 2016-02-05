class Order < ActiveRecord::Base
  include EnumHelper
  has_paper_trail
  has_many :vehicles
  belongs_to :broker, :inverse_of => :orders
  belongs_to :customer, :inverse_of => :orders
  belongs_to :carrier, :inverse_of => :orders

  def order_status_enum
    ['Fill in this enum with statuses later']
  end
  def carrier_paid_type_cd_enum
    carrier_paid_type_cd
  end
  def price_terms_cd_enum
    price_terms_cd
  end
  def ship_type_cd_enum
    ship_type_cd
  end
  def dest_state_enum
    us_states_abbr
  end
  def origin_state_enum
    us_states_abbr
  end
  def customer_state_enum
    us_states_abbr
  end
end
