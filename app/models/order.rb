class Order < ActiveRecord::Base
  has_paper_trail
  has_many :vehicles
  belongs_to :broker, :inverse_of => :orders
  belongs_to :customer, :inverse_of => :orders
  belongs_to :carrier, :inverse_of => :orders
  def carrier_paid_type_cd_enum
    ['At Pick Up', 'One Delivery', 'Billing - Comcheck', 'Billing = Check in the mail']
  end
  def price_terms_cd_enum
    ['Pay at Order Placement', 'Pay at Pickup', 'Pay on Delivery', 'Billing']
  end
  def ship_type_cd_enum
    %w(Open Enclosed)
  end
end
