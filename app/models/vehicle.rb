class Vehicle < ActiveRecord::Base
  has_paper_trail
  def vehicle_type_cd_enum
    %w(Sedan SUV Truck Van Other)
  end
  belongs_to :order
end
