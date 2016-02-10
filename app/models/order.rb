class Order < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  has_many :vehicles
  belongs_to :broker, :inverse_of => :orders
  belongs_to :customer, :inverse_of => :orders
  belongs_to :carrier, :inverse_of => :orders
  validates :customer, presence: true

  rails_admin do
    configure :carrier do
      inline_add false
      inline_edit false
    end
    configure :broker do
      inline_add false
      inline_edit false
    end
    configure :customer do
      inline_add false
      inline_edit false
    end
    exclude_fields :versions, :deleted
  end
  def order_status_enum
    order_status
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

  def referred_by_cd_enum
    Broker.include_deleted.pluck(:first_name, :last_name, :id).map {|f, l ,i| ["#{f} #{l}", i]}
  end
end
