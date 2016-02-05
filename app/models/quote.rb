class Quote < ActiveRecord::Base
  has_paper_trail
  def vtype_cd_enum
    %w(Sedan SUV Truck Van Other)
  end
  def price_terms_cd_enum
    ['Pay at Order Placement', 'Pay at Pickup', 'Pay on Delivery', 'Billing']
  end
  def ship_type_cd_enum
    %w(Open Enclosed)
  end
end
