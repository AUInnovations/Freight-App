class Vehicle < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  def vehicle_type_cd_enum
    vehicle_type_cd
  end
  belongs_to :order
end
